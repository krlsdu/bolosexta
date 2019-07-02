require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    skip("reason for skipping the test")

    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    skip("reason for skipping the test")

    get :new
    assert_response :success
  end

  test "should create person" do
    skip("reason for skipping the test")

    assert_difference('Person.count') do
      post :create, person: { name: @person.name }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    skip("reason for skipping the test")

    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    skip("reason for skipping the test")

    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    skip("reason for skipping the test")

    patch :update, id: @person, person: { name: @person.name }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    skip("reason for skipping the test")

    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
