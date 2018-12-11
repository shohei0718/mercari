FactoryBot.define do

  factory :item_image do
    image             { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/image/spec.jpg')) }
    created_at          { Faker::Time.between(2.days.ago, Time.now, :all) }
    updated_at          { Faker::Time.between(2.days.ago, Time.now, :all) }
    association :item,  factory: :item
  end

end
