class Category < ApplicationRecord
  belongs_to :theme
  has_many :playlists
  has_many :places 
  has_many :links, through: :playlists
end
