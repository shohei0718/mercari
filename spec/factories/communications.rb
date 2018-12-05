FactoryBot.define do

  factory :communication do
    id                { "1" }
    message           { "hello" }
    association :user,          factory: :user
    association :item,          factory: :item
    association :order_status,  factory: :order_status
  end

end
