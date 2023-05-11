# frozen_string_literal: true
FactoryBot.define do
  factory :course do
    name { Faker::Internet.email }
    description { Faker::Internet.password }
  end
end