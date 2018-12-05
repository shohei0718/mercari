FactoryBot.define do

  factory :order do
    id                        { "1" }
    first_name_delivery       {"a"}
    first_name_kane_delivery  {"a"}
    last_name_delivery        {"a"}
    last_name_kane_delivery   {"a"}
    city_delivery             {"a"}
    adress_delivery           {"a"}
    building_delivery         {"a"}
    zipcode_delivery          {"1"}
    teliphone_delivery        {"1"}
    payment_method            {"1"}
    point                     {"1"}
    user_point                {"1"}
    association :user,  factory: :user
    association :item,  factory: :item
    association :prefecture, factory: :prefecture
  end

end
