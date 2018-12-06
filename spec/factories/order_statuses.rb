FactoryBot.define do

  factory :order_status do
    order_status      { "good" }
    initialize_with   { OrderStatus.find_or_create_by(id: 1,order_status: 'good')}
  end

end
