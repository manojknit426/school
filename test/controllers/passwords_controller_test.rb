require 'test_helper'

class PasswordsControllerTest < ActionController::TestCase
  test "should get forgot_password" do
    get :forgot_password
    assert_response :success
  end

end
