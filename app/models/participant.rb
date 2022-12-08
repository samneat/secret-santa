class Participant < ApplicationRecord
  has_many :wishlists, dependent: :destroy
end
