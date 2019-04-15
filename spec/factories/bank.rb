FactoryBot.define do
  factory :bank do
    trait :type_a do
      name { 'A銀行' }
    end

    trait :type_b do
      name { 'B銀行' }
    end

    trait :type_c do
      name { 'C信用金庫' }
    end

    factory :bank_a, traits: [:type_a]
    factory :bank_b, traits: [:type_b]
    factory :bank_c, traits: [:type_c]
  end
end
