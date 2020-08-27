require 'rails_helper'

RSpec.describe PurchaseInformation, type: :model do
  let!(:purchase_information) { create(:purchase_information) }

  it 'is valid with all attributes' do
    expect(purchase_information).to be_valid
  end
end
