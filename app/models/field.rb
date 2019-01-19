# == Schema Information
#
# Table name: fields
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Field < ApplicationRecord
  has_and_belongs_to_many :theories
  has_and_belongs_to_many :thinkers, :through => :theories
end
