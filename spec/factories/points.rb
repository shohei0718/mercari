FactoryBot.define do

  factory :point do
    id                        { "1" }
    first_name_delivery       {"1"}
    association :user,  factory: :user
    association :point_status, factory: :point_status
  end

end
