require "application_system_test_case"

class MeetingPointsTest < ApplicationSystemTestCase
  setup do
    @meeting_point = meeting_points(:one)
  end

  test "visiting the index" do
    visit meeting_points_url
    assert_selector "h1", text: "Meeting Points"
  end

  test "creating a Meeting point" do
    visit meeting_points_url
    click_on "New Meeting Point"

    fill_in "Memories", with: @meeting_point.memories
    fill_in "Name", with: @meeting_point.name
    fill_in "Remarks", with: @meeting_point.remarks
    click_on "Create Meeting point"

    assert_text "Meeting point was successfully created"
    click_on "Back"
  end

  test "updating a Meeting point" do
    visit meeting_points_url
    click_on "Edit", match: :first

    fill_in "Memories", with: @meeting_point.memories
    fill_in "Name", with: @meeting_point.name
    fill_in "Remarks", with: @meeting_point.remarks
    click_on "Update Meeting point"

    assert_text "Meeting point was successfully updated"
    click_on "Back"
  end

  test "destroying a Meeting point" do
    visit meeting_points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meeting point was successfully destroyed"
  end
end
