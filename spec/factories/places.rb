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
#  theme_id    :integer
#

FactoryBot.define do
  factory :place do
    name "MyString"
    description "MyText"
    category nil
    user nil
  end
end
