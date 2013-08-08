require 'test_helper'

class GreetingsControllerTest < ActionController::TestCase
  setup do
    @greeting = greetings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:greetings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create greeting" do
    assert_difference('Greeting.count') do
      post :create, greeting: { author: @greeting.author, message: @greeting.message }
    end

    assert_redirected_to greeting_path(assigns(:greeting))
  end

  test "should show greeting" do
    get :show, id: @greeting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @greeting
    assert_response :success
  end

  test "should update greeting" do
    patch :update, id: @greeting, greeting: { author: @greeting.author, message: @greeting.message }
    assert_redirected_to greeting_path(assigns(:greeting))
  end

  test "should destroy greeting" do
    assert_difference('Greeting.count', -1) do
      delete :destroy, id: @greeting
    end

    assert_redirected_to greetings_path
  end
end
