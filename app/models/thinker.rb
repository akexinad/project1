# == Schema Information
#
# Table name: thinkers
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  birth       :date
#  death       :date
#  nationality :text
#  era         :text
#  quote       :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Thinker < ApplicationRecord
  validates :name, :uniqueness => true
  belongs_to :user, :optional => true
  has_many :theories
  has_many :fields, :through => :theories
  has_many :favourites

  include PgSearch
  # The below is saying "I want pgsearch the search against these columns":
  pg_search_scope :search, against: [:name, :era, :nationality],
    # You can also search plurals by adding the dictionary, as you would do in postgresql text search:
    using: {tsearch: {dictionary: "english"}},
    # You can also search through the model's associations. Not the singular and plural:
    associated_against: {theories: :name, fields: [:name]}

  def self.text_search(query)
    if query.present?
      # This gives a conventional search when you feed it one word:
      # where ("name ilike :q", q: "%#{query}%")
      #
      # This will allow you to search more than one word, as well as rank the searches by relevance:
      # rank = <<-RANK
      # ts_rank(to_tsvector(name), plainto_tsquery(#{sanitize(query)}))
      # RANK
      # where("name @@ :q", q: query)
      #
      # Now with the texticle gem installed all we need to do is pass this:
      search(query)
    else
      scoped
    end # if
  end # def
end # class
