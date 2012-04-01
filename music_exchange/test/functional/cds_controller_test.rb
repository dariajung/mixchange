require 'test_helper'

class CdsControllerTest < ActionController::TestCase
  setup do
    @cd = cds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cd" do
    assert_difference('Cd.count') do
      post :create, cd: @cd.attributes
    end

    assert_redirected_to cd_path(assigns(:cd))
  end

  test "should show cd" do
    get :show, id: @cd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cd
    assert_response :success
  end

  test "should update cd" do
    put :update, id: @cd, cd: @cd.attributes
    assert_redirected_to cd_path(assigns(:cd))
  end

  test "should destroy cd" do
    assert_difference('Cd.count', -1) do
      delete :destroy, id: @cd
    end

    assert_redirected_to cds_path
  end
end
