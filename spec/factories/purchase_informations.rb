FactoryBot.define do
  factory :purchase_information do
    purchaser_name { FFaker::Name.name }
    item_description { FFaker::AWS.product_description }
    item_price { rand(1..20).to_f }
    purchase_count { rand(1..20) }
    merchant_address { FFaker::Address.street_address }
    merchant_name { FFaker::Name.name }
  end
end
