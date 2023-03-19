require 'rails_helper'

RSpec.describe "Plants", type: :request do
  describe "GET /index" do
    it "returns a success response" do
      get "/plants"
      expect(response).to have_http_status(:ok)
    end

    it "returns a list of plants" do
      Plant.create(name: "Plant 1", price: 10)
      Plant.create(name: "Plant 2", price: 20)
      get "/plants"
      expect(response.body).to include("Plant 1")
      expect(response.body).to include("Plant 2")
    end
  end
end

