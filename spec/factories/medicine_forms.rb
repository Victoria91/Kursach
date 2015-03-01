FactoryGirl.define do
  factory :medicine_form do
    quantity_storage { rand(1..10) }
    medicine_id { rand(1..10) }
    form_id { rand(1..10) }
  end
end