require 'rails_helper'

RSpec.describe "Measurements", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/measurements/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/measurements/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/measurements/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/measurements/show"
      expect(response).to have_http_status(:success)
    end
  end

end
