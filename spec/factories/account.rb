FactoryBot.define do
  factory :account do
    user_id { 1 }
    bank_id { 1 }
    sequence(:balance) { |n| n }
    name { Aカード }
  end
end
