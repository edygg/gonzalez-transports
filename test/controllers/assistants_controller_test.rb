require 'test_helper'

class AssistantsControllerTest < ActionController::TestCase
  setup do
    @assistant = assistants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assistants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assistant" do
    assert_difference('Assistant.count') do
      post :create, assistant: { birth_date: @assistant.birth_date, email: @assistant.email, gender: @assistant.gender, name: @assistant.name, phone: @assistant.phone, salary: @assistant.salary }
    end

    assert_redirected_to assistant_path(assigns(:assistant))
  end

  test "should show assistant" do
    get :show, id: @assistant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assistant
    assert_response :success
  end

  test "should update assistant" do
    patch :update, id: @assistant, assistant: { birth_date: @assistant.birth_date, email: @assistant.email, gender: @assistant.gender, name: @assistant.name, phone: @assistant.phone, salary: @assistant.salary }
    assert_redirected_to assistant_path(assigns(:assistant))
  end

  test "should destroy assistant" do
    assert_difference('Assistant.count', -1) do
      delete :destroy, id: @assistant
    end

    assert_redirected_to assistants_path
  end
end
