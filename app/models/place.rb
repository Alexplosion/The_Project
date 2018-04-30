# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  category_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Place < ApplicationRecord
  belongs_to :category
  belongs_to :user , optional: true
  has_many :links, as: :linkable
  accepts_nested_attributes_for :links, allow_destroy: true
end
