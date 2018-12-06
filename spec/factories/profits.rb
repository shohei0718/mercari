FactoryBot.define do

  factory :profit do
    profit                    {"a"}
    expiration_date           {"1"}
    profit_is_valid           {"a"}
    association :user,  factory: :user
    association :item,  factory: :item
  end

end
