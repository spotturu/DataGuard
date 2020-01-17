require "application_system_test_case"

class GroupLeadersTest < ApplicationSystemTestCase
  setup do
    @group_leader = group_leaders(:one)
  end

  test "visiting the index" do
    visit group_leaders_url
    assert_selector "h1", text: "Group Leaders"
  end

  test "creating a Group leader" do
    visit group_leaders_url
    click_on "New Group Leader"

    click_on "Create Group leader"

    assert_text "Group leader was successfully created"
    click_on "Back"
  end

  test "updating a Group leader" do
    visit group_leaders_url
    click_on "Edit", match: :first

    click_on "Update Group leader"

    assert_text "Group leader was successfully updated"
    click_on "Back"
  end

  test "destroying a Group leader" do
    visit group_leaders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group leader was successfully destroyed"
  end
end
