require 'test_helper'

class NotesControllerTest < ActionController::TestCase
  test "should get create_note" do
    get :create_note
    assert_response :success
  end

  test "should get add_note" do
    get :add_note
    assert_response :success
  end

  test "should get delete_note" do
    get :delete_note
    assert_response :success
  end

  test "should get show_note" do
    get :show_note
    assert_response :success
  end

end
