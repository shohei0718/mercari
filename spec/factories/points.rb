FactoryBot.define do

  factory :point do
    first_name_delivery       {"1"}
    association :user,  factory: :user
    association :point_status, factory: :point_status
  end

end
