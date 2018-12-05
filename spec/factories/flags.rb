FactoryBot.define do

  factory :flag do
    id                { "1" }
    association :user,  factory: :user
    association :item,  factory: :item
  end

end
