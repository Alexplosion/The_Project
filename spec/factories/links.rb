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

FactoryBot.define do
  factory :link do
    linkable nil
    title "MyString"
    linky "MyString"
    favicon "MyString"
    text ""
    image "MyString"
    video "MyString"
  end
end
