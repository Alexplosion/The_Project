class Theme < ApplicationRecord
    has_many :categories
    has_many :places, through: :categories
    has_many :playlists, through: :categories

end
