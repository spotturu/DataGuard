require 'test_helper'

class MeetingPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meeting_point = meeting_points(:one)
  end

  test "should get index" do
    get meeting_points_url
    assert_response :success
  end

  test "should get new" do
    get new_meeting_point_url
    assert_response :success
  end

  test "should create meeting_point" do
    assert_difference('MeetingPoint.count') do
      post meeting_points_url, params: { meeting_point: { memories: @meeting_point.memories, name: @meeting_point.name, remarks: @meeting_point.remarks } }
    end

    assert_redirected_to meeting_point_url(MeetingPoint.last)
  end

  test "should show meeting_point" do
    get meeting_point_url(@meeting_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_meeting_point_url(@meeting_point)
    assert_response :success
  end

  test "should update meeting_point" do
    patch meeting_point_url(@meeting_point), params: { meeting_point: { memories: @meeting_point.memories, name: @meeting_point.name, remarks: @meeting_point.remarks } }
    assert_redirected_to meeting_point_url(@meeting_point)
  end

  test "should destroy meeting_point" do
    assert_difference('MeetingPoint.count', -1) do
      delete meeting_point_url(@meeting_point)
    end

    assert_redirected_to meeting_points_url
  end
end
