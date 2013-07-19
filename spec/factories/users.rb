FactoryGirl.define do
  factory :user do |f|
    f.email "user@site.com"
    f.password "password"
    f.password_confirmation "password"

  end
end
