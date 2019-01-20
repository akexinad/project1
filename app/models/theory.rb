# == Schema Information
#
# Table name: theories
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  thinker_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Theory < ApplicationRecord
  validates :name, :uniqueness => true
  belongs_to :thinker, :optional => true
  has_and_belongs_to_many :fields
end
