FactoryBot.define do

  factory :payment_information do
    id                        { "1" }
    card_number               {"1"}
    valid_year                {"1"}
    cvc                       {"1"}
    association :user,  factory: :user
  end

end
