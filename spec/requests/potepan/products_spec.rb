require 'rails_helper'
require 'spree/testing_support/factories'

RSpec.describe "Potepan::Products", type: :request do
  let!(:product) { create(:product) }

  describe "GET #show" do
    it "returns http success" do
      get potepan_product_path(product.id)
      expect(response).to have_http_status(:success)
    end
  end
end
