FactoryBot.define do
  factory :user do
    name { "MyString" }
    provider { "MyString" }
    uid { "MyString" }
    role { 1 }
    email { "MyString" }
    prefs { "MyText" }
    facebook_id { "MyString" }
    street_address { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { "MyString" }
    phone_no { "MyString" }
  end
end
