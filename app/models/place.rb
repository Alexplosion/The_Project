class Place < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :links, as: :linkable
end
