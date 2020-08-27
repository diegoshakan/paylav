require 'rails_helper'

RSpec.describe "PurchaseInformations", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/purchase_informations"
      expect(response).to have_http_status(302)
    end
  end

  describe "POST /import_data" do
    it "returns http success" do
      post "/purchase_informations"
      expect(response).to have_http_status(302)
    end
  end

end
