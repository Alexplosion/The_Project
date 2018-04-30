# == Schema Information
#
# Table name: themes
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Theme < ApplicationRecord
    has_many :categories
    has_many :places
    has_many :playlists
    accepts_nested_attributes_for :categories, allow_destroy: true

end
