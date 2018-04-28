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

require 'rails_helper'

RSpec.describe Link, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
