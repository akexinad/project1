# == Schema Information
#
# Table name: fields
#
#  id         :bigint(8)        not null, primary key
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Field < ApplicationRecord
end
