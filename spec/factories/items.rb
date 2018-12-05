FactoryBot.define do

  factory :item do
    id                  { "1" }
    name                { "バッグ" }
    price               { "99999" }
    description         { "バッグーーーーーーーーーーーーーーーーーーーーーーーーーーーー" }
    created_at          { "2018-05-05 00:00:00" }
    updated_at          { "2018-05-05 00:00:00" }
    association :user,            factory: :user
    association :first_category,  factory: :first_category
    association :second_category, factory: :second_category
    association :third_category,  factory: :third_category
    association :brand,           factory: :brand
    association :size,            factory: :size
    association :condition,       factory: :condition
    association :delivery_charge, factory: :delivery_charge
    association :prefecture,      factory: :prefecture
    association :delivery_date,   factory: :delivery_date
    association :order_status,    factory: :order_status
    association :delivery_way,    factory: :delivery_way
  end

end
