require "application_system_test_case"

class GroupMembersTest < ApplicationSystemTestCase
  setup do
    @group_member = group_members(:one)
  end

  test "visiting the index" do
    visit group_members_url
    assert_selector "h1", text: "Group Members"
  end

  test "creating a Group member" do
    visit group_members_url
    click_on "New Group Member"

    click_on "Create Group member"

    assert_text "Group member was successfully created"
    click_on "Back"
  end

  test "updating a Group member" do
    visit group_members_url
    click_on "Edit", match: :first

    click_on "Update Group member"

    assert_text "Group member was successfully updated"
    click_on "Back"
  end

  test "destroying a Group member" do
    visit group_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group member was successfully destroyed"
  end
end
