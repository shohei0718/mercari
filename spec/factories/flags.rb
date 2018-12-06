FactoryBot.define do

  factory :flag do
    association :user,  factory: :user
    association :item,  factory: :item
  end

end
