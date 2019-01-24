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
  validates :name, :uniqueness => true
  has_and_belongs_to_many :theories
  has_many :thinkers, :through => :theories
  include PgSearch
  # The below is saying "I want pgsearch the search against these columns":
  pg_search_scope :search, against: [:name],
    # You can also search plurals by adding the dictionary, as you would do in postgresql text search:
    using: {tsearch: {dictionary: "english"}}

  def self.text_search(query)
    if query.present?
      search(query)
    else
      scoped
    end # if
  end # def
end
