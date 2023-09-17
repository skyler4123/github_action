require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it "test controller" do
    user = User.create(email: "emailtest")
    get :index
    expect(assigns(:users)).to eq([user])
  end
end
