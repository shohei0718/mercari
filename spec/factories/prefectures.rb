FactoryBot.define do

  factory :prefecture do
    prefecture        { "北海道" }
    initialize_with   { Prefecture.find_or_create_by(id: 1,prefecture: '北海道')}
  end

end
