FactoryBot.define do

  factory :condition do
    condition         { "good" }
    initialize_with   { Condition.find_or_create_by(id: 1,condition: 'good')}
  end

end
