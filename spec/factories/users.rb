FactoryBot.define do
  factory :user do
    name { 'MyString' }
    photo { 'MyString' }
    bio { 'MyText' }
    postscounter { 1 }
  end
end
