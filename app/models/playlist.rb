class Playlist < ApplicationRecord
  belongs_to :category
  belongs_to :user , optional: true
  has_many :links, as: :linkable
end
