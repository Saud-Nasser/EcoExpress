FactoryGirl.define do
  factory :order do
    pickup "MyString"
    details "MyText"
    client nil
  end
  factory :client do
    name     {"Saud psau"}
    email    {"psau@example.com"}
    district {"Malqa"}
    password {"1234567"}
    password_confirmation {"1234567"}
  end
end