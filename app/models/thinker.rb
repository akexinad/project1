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
end
