FactoryBot.define do

  factory :delivery_way do
    way               { "way"}
    initialize_with   { DeliveryWay.find_or_create_by(id: 1,way: 'way')}
  end

end
