require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe "POST create" do
    context "with valid parameters" do
      it "creates a new user" do
        expect {
          post :create, params: { user: attributes_for(:user) }
        }.to change(User, :count).by(1)
      end

      it "returns 201 Created" do
        post :create, params: { user: attributes_for(:user) }
        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid parameters" do
      it "does not create a new user" do
        expect {
          post :create, params: { user: attributes_for(:user, username: nil) }
        }.not_to change(User, :count)
      end

      it "returns 422 Unprocessable Entity" do
        post :create, params: { user: attributes_for(:user, username: nil) }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
