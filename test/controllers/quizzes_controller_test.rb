require 'test_helper'

class QuizzesControllerTest < ActionController::TestCase
  test "should get create_quiz" do
    get :create_quiz
    assert_response :success
  end

end
