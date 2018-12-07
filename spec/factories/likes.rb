FactoryBot.define do

  factory :like do
    association :user,  factory: :user
    association :item,  factory: :item
  end

end
