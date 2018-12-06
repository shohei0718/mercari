FactoryBot.define do

  factory :user do
    nickname                { "aaaaa" }
    first_name              { "yamada" }
    first_name_kana         { "yamada" }
    last_name               { "taro" }
    last_name_kana          { "taro" }
    city                    { "city" }
    address                 { "address" }
    building                { "building" }
<<<<<<< HEAD
    email                   { "karioki@gmail.com" }
    encrypted_password      { "123456a" }
    reset_password_token    { "123456a" }
    telephone               { "0000" }
    zip_code                { "1234567" }
=======
    email                   { Faker::Internet.email }
    encrypted_password      { Faker::Internet.password }
    reset_password_token    { Faker::Internet.password }
    telephone               { "0000" }
    zip_code                { "0000" }
>>>>>>> shohei0718/master
    birth_year              { "2000" }
    birth_month             { "1" }
    birth_day               { "1" }
    point_amount            { "a" }
    user_icon               { "user_icon" }
    introduction            { "introduction" }
    remember_created_at     { "1" }
    reset_password_sent_at  { "0000" }
<<<<<<< HEAD
    password                { "00000000" }
    password_confirmation   { "00000000" }
    association :prefecture,           factory: :prefecture
=======
    password                { "111111" }
    password_confirmation   { "111111" }
    association :prefecture,           factory: :prefecture
    # association :payment_information,  factory: :payment_information
>>>>>>> shohei0718/master
  end

end
