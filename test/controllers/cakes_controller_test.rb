require 'test_helper'

class CakesControllerTest < ActionController::TestCase
  setup do
    @cake = cakes(:one)
  end

  test "should get index" do
    skip("reason for skipping the test")

    get :index
    assert_response :success
    assert_not_nil assigns(:cakes)
  end

  test "should get new" do
    skip("reason for skipping the test")

    get :new
    assert_response :success
  end

  test "should create cake" do
    skip("reason for skipping the test")

    assert_difference('Cake.count') do
      post :create, cake: { name: @cake.name }
    end

    assert_redirected_to cake_path(assigns(:cake))
  end

  test "should show cake" do
    skip("reason for skipping the test")

    get :show, id: @cake
    assert_response :success
  end

  test "should get edit" do
    skip("reason for skipping the test")

    get :edit, id: @cake
    assert_response :success
  end

  test "should update cake" do
    skip("reason for skipping the test")

    patch :update, id: @cake, cake: { name: @cake.name }
    assert_redirected_to cake_path(assigns(:cake))
  end

  test "should destroy cake" do
    skip("reason for skipping the test")

    assert_difference('Cake.count', -1) do
      delete :destroy, id: @cake
    end

    assert_redirected_to cakes_path
  end
end
