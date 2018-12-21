FactoryBot.define do

  factory :communication do
    message           { "hello" }
    created_at { Faker::Time.between(2.days.ago, Time.now, :all) }
    updated_at          { "2018-05-05 00:00:00" }
    seller_or_buyer   {   1   }
    association :user,          factory: :user
    association :item,          factory: :item
    association :order_status,  factory: :order_status
  end

end
