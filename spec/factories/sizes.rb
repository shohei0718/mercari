FactoryBot.define do

  factory :size do
    id                { "1" }
    size              { "l"}
    associtation { :size_category }, factory: :size_category
  end

end

