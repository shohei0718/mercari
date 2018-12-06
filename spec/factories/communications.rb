FactoryBot.define do

  factory :communication do
    message           { "hello" }
    association :user,          factory: :user
    association :item,          factory: :item
    association :order_status,  factory: :order_status
  end

end
