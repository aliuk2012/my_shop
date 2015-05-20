FactoryGirl.define do
  factory :user do
    name "Bob Jones"
    email "Bob.Jones@example.com"
    password "notasecret"
    password_confirmation "notasecret"
    confirmed_at { 2.months.ago }
  end

end
