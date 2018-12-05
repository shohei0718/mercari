FactoryBot.define do

  factory :rate_count do
    id                        { "1" }
    message                   {"a"}
    seller_or_buyer           {"1"}
    association :user,  factory: :user
    association :item,  factory: :item
    association :rate,  factory: :rate
  end

end
