require 'test_helper'

class TravelPackagesControllerTest < ActionController::TestCase
  setup do
    @travel_package = travel_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_package" do
    assert_difference('TravelPackage.count') do
      post :create, travel_package: { price: @travel_package.price }
    end

    assert_redirected_to travel_package_path(assigns(:travel_package))
  end

  test "should show travel_package" do
    get :show, id: @travel_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_package
    assert_response :success
  end

  test "should update travel_package" do
    patch :update, id: @travel_package, travel_package: { price: @travel_package.price }
    assert_redirected_to travel_package_path(assigns(:travel_package))
  end

  test "should destroy travel_package" do
    assert_difference('TravelPackage.count', -1) do
      delete :destroy, id: @travel_package
    end

    assert_redirected_to travel_packages_path
  end
end
