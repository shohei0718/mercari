FactoryBot.define do

  factory :order do
    first_name_delivery       {"a"}
    first_name_kana_delivery  {"a"}
    last_name_delivery        {"a"}
    last_name_kana_delivery   {"a"}
    city_delivery             {"a"}
    adress_delivery           {"a"}
    building_delivery         {"a"}
    zip_code_delivery         {"1"}
    telephone_delivery        {"1"}
    payment_method            {"1"}
    point                     {"1"}
    user_point                {"1"}
    association :user,  factory: :user
    association :item,  factory: :item
    association :prefecture, factory: :prefecture
  end

end
