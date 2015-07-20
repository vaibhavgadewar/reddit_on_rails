require 'faker'

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
    #confirmed_at Date.today
    initialize_with { new(email, password) } 
  end
end