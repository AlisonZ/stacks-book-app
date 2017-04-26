require "test_helper"

describe SessionsController do
  # it "must be a real test" do
  #   flunk "Need real tests"
  # end
describe "auth_callback" do
    user = users(:kari)

    OmniAuth.config.mock_auth[:github]
    OmniAuth::AuthHash.new(mock_auth_hash(user))

    get auth_callback_path(github)
end


  it "Can create a user" do

    must_redirect_to root_path
    flash[:success].must_equal "Logged in successfully!"
  end


end
