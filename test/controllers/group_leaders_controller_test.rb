require 'test_helper'

class GroupLeadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_leader = group_leaders(:one)
  end

  test "should get index" do
    get group_leaders_url
    assert_response :success
  end

  test "should get new" do
    get new_group_leader_url
    assert_response :success
  end

  test "should create group_leader" do
    assert_difference('GroupLeader.count') do
      post group_leaders_url, params: { group_leader: {  } }
    end

    assert_redirected_to group_leader_url(GroupLeader.last)
  end

  test "should show group_leader" do
    get group_leader_url(@group_leader)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_leader_url(@group_leader)
    assert_response :success
  end

  test "should update group_leader" do
    patch group_leader_url(@group_leader), params: { group_leader: {  } }
    assert_redirected_to group_leader_url(@group_leader)
  end

  test "should destroy group_leader" do
    assert_difference('GroupLeader.count', -1) do
      delete group_leader_url(@group_leader)
    end

    assert_redirected_to group_leaders_url
  end
end
