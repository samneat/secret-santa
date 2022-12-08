class WishlistsController < ApplicationController
  before_action :set_participant, only: %i[new create]

  def new
    @wishlist = Wishlist.new
  end

  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.participant = @participant
    @wishlist.save
    redirect_to participant_path(@participant)
  end

  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy
    redirect_to wishlist_path(@wishlist.participant), status: :see_other
  end

  private

  def set_participant
    @participant = Participant.find(params[:participant_id])
  end

  def wishlist_params
    params.require(:wishlist).permit(:content)
  end
end
