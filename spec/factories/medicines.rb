FactoryGirl.define do
  factory :medicine do
    name 'medicine name'
    min { rand(1..10) }
  end
end