class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[show edit update destroy]
  def index
    @participants = Participant.all
  end

  def show

  end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(participant_params)
    if @participant.save
      redirect_to participant_path(@participant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def update
    if @participant.update(participant_params)
      redirect_to participant_path(@participant)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @participant.destroy
    redirect_to participants_path, status: :see_other
  end

  private

  def set_participant
    @participant = Participant.find(params[:id])
  end

  def participant_params
    params.require(:participant).permit(:first_name, :last_name)
  end
end
