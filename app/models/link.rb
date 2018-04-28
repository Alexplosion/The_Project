# == Schema Information
#
# Table name: links
#
#  id            :integer          not null, primary key
#  linkable_type :string
#  linkable_id   :integer
#  title         :string
#  linky         :string
#  favicon       :string
#  description   :text
#  image         :string
#  video         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Link < ApplicationRecord
  belongs_to :linkable, polymorphic: true, optional: true
end


