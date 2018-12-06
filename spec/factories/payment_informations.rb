FactoryBot.define do

  factory :payment_information do
    card_number               {"1"}
    valid_year                {"1"}
    cvc                       {"1"}
<<<<<<< HEAD
    association :user,  factory: :user
=======
    # association :user,  factory: :user
>>>>>>> shohei0718/master
  end

end
