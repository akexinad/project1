class Favourite < ApplicationRecord
  validates :thinker_id, uniqueness: { scope: :user_id,
  message: "Duplicate!" }
  belongs_to :user, :optional => true
  belongs_to :thinker, :optional => true
end
