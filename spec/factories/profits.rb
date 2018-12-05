FactoryBot.define do

  factory :profits do
    id                        { "1" }
    profit                    {"a"}
    expiration_date           {"1"}
    profit_is_valid           {"a"}
    association :user,  factory: :user
    association :item,  factory: :item
  end

end
