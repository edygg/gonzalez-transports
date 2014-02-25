require 'test_helper'

class BusDriversControllerTest < ActionController::TestCase
  setup do
    @bus_driver = bus_drivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bus_drivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bus_driver" do
    assert_difference('BusDriver.count') do
      post :create, bus_driver: { birth_date: @bus_driver.birth_date, email: @bus_driver.email, gender: @bus_driver.gender, name: @bus_driver.name, phone: @bus_driver.phone, salary: @bus_driver.salary }
    end

    assert_redirected_to bus_driver_path(assigns(:bus_driver))
  end

  test "should show bus_driver" do
    get :show, id: @bus_driver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bus_driver
    assert_response :success
  end

  test "should update bus_driver" do
    patch :update, id: @bus_driver, bus_driver: { birth_date: @bus_driver.birth_date, email: @bus_driver.email, gender: @bus_driver.gender, name: @bus_driver.name, phone: @bus_driver.phone, salary: @bus_driver.salary }
    assert_redirected_to bus_driver_path(assigns(:bus_driver))
  end

  test "should destroy bus_driver" do
    assert_difference('BusDriver.count', -1) do
      delete :destroy, id: @bus_driver
    end

    assert_redirected_to bus_drivers_path
  end
end
