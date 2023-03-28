FactoryBot.define do
  factory :post do
    title { 'MyString' }
    text { 'MyText' }
    commentscounter { 1 }
    likescounter { 1 }
    user { nil }
  end
end
