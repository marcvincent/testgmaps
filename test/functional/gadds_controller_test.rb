require 'test_helper'

class GaddsControllerTest < ActionController::TestCase
  setup do
    @gadd = gadds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gadds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gadd" do
    assert_difference('Gadd.count') do
      post :create, gadd: { latitude: @gadd.latitude, longitude: @gadd.longitude, name: @gadd.name, user_id: @gadd.user_id }
    end

    assert_redirected_to gadd_path(assigns(:gadd))
  end

  test "should show gadd" do
    get :show, id: @gadd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gadd
    assert_response :success
  end

  test "should update gadd" do
    put :update, id: @gadd, gadd: { latitude: @gadd.latitude, longitude: @gadd.longitude, name: @gadd.name, user_id: @gadd.user_id }
    assert_redirected_to gadd_path(assigns(:gadd))
  end

  test "should destroy gadd" do
    assert_difference('Gadd.count', -1) do
      delete :destroy, id: @gadd
    end

    assert_redirected_to gadds_path
  end
end
