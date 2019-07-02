require 'test_helper'

class MeetingsControllerTest < ActionController::TestCase
  setup do
    @meeting = meetings(:one)
  end

  test "should get index" do
    skip("reason for skipping the test")

    get :index
    assert_response :success
    assert_not_nil assigns(:meetings)
  end

  test "should get new" do
    skip("reason for skipping the test")

    get :new
    assert_response :success
  end

  test "should create meeting" do
    skip("reason for skipping the test")

    assert_difference('Meeting.count') do
      post :create, meeting: { cake_id: @meeting.cake_id, date: @meeting.date, person_id: @meeting.person_id }
    end

    assert_redirected_to meeting_path(assigns(:meeting))
  end

  test "should show meeting" do
    skip("reason for skipping the test")

    get :show, id: @meeting
    assert_response :success
  end

  test "should get edit" do
    skip("reason for skipping the test")

    get :edit, id: @meeting
    assert_response :success
  end

  test "should update meeting" do
    skip("reason for skipping the test")

    patch :update, id: @meeting, meeting: { cake_id: @meeting.cake_id, date: @meeting.date, person_id: @meeting.person_id }
    assert_redirected_to meeting_path(assigns(:meeting))
  end

  test "should destroy meeting" do
    skip("reason for skipping the test")

    assert_difference('Meeting.count', -1) do
      delete :destroy, id: @meeting
    end

    assert_redirected_to meetings_path
  end
end
