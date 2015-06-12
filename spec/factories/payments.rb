FactoryGirl.define do
  factory :payment do
    value 1.5
description "MyText"
status false
deadline "2015-04-08"
provider nil
payment_type nil
  end

end
