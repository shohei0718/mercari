FactoryBot.define do

  factory :like do
    id                { "1" }
    association :user,  factory: :user
    association :item,  factory: :item
  end

end
