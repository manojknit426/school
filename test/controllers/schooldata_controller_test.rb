require 'test_helper'

class SchooldataControllerTest < ActionController::TestCase
  setup do
    @schooldatum = schooldata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schooldata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schooldatum" do
    assert_difference('Schooldatum.count') do
      post :create, schooldatum: { Schoolcode: @schooldatum.Schoolcode, boardcode: @schooldatum.boardcode, branchname: @schooldatum.branchname, email: @schooldatum.email, fromstd: @schooldatum.fromstd, isactive: @schooldatum.isactive, phone: @schooldatum.phone, pictlink: @schooldatum.pictlink, registerunder: @schooldatum.registerunder, schoolname: @schooldatum.schoolname, schoolownershiptype: @schooldatum.schoolownershiptype, tostd: @schooldatum.tostd, website: @schooldatum.website, yearofestb: @schooldatum.yearofestb }
    end

    assert_redirected_to schooldatum_path(assigns(:schooldatum))
  end

  test "should show schooldatum" do
    get :show, id: @schooldatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schooldatum
    assert_response :success
  end

  test "should update schooldatum" do
    patch :update, id: @schooldatum, schooldatum: { Schoolcode: @schooldatum.Schoolcode, boardcode: @schooldatum.boardcode, branchname: @schooldatum.branchname, email: @schooldatum.email, fromstd: @schooldatum.fromstd, isactive: @schooldatum.isactive, phone: @schooldatum.phone, pictlink: @schooldatum.pictlink, registerunder: @schooldatum.registerunder, schoolname: @schooldatum.schoolname, schoolownershiptype: @schooldatum.schoolownershiptype, tostd: @schooldatum.tostd, website: @schooldatum.website, yearofestb: @schooldatum.yearofestb }
    assert_redirected_to schooldatum_path(assigns(:schooldatum))
  end

  test "should destroy schooldatum" do
    assert_difference('Schooldatum.count', -1) do
      delete :destroy, id: @schooldatum
    end

    assert_redirected_to schooldata_path
  end
end
