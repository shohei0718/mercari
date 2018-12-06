FactoryBot.define do

  factory :delivery_date do
    date              { "1" }
    initialize_with   { DeliveryDate.find_or_create_by(id: 1,date: '1')}
  end

end
