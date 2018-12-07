FactoryBot.define do

  factory :delivery_charge do
    charge            { "charge" }
    initialize_with   { DeliveryCharge.find_or_create_by(id: 1,charge: 'charge')}
  end

end
