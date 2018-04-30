# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  theme_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
  belongs_to :theme
  has_many :playlists
  has_many :places 
  has_many :links, through: :playlists
  accepts_nested_attributes_for :playlists, :places, allow_destroy: true
end
