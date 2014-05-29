# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post_comment do
    author "MyString"
    comment "MyText"
    post nil
  end
end
