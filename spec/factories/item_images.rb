FactoryBot.define do

  factory :item_image do
    image             { ItemImage.find_or_create_by(id: 1,image: "https://nekogazou.com/wp-content/uploads/2015/03/gazou12-e1426694824704.jpg")}
    association :item,  factory: :item
  end


end
