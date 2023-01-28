require "application_system_test_case"

class RitualsTest < ApplicationSystemTestCase
  setup do
    @ritual = rituals(:one)
  end

  test "visiting the index" do
    visit rituals_url
    assert_selector "h1", text: "Rituals"
  end

  test "creating a Ritual" do
    visit rituals_url
    click_on "New Ritual"

    fill_in "Body", with: @ritual.body
    fill_in "Title", with: @ritual.title
    click_on "Create Ritual"

    assert_text "Ritual was successfully created"
    click_on "Back"
  end

  test "updating a Ritual" do
    visit rituals_url
    click_on "Edit", match: :first

    fill_in "Body", with: @ritual.body
    fill_in "Title", with: @ritual.title
    click_on "Update Ritual"

    assert_text "Ritual was successfully updated"
    click_on "Back"
  end

  test "destroying a Ritual" do
    visit rituals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ritual was successfully destroyed"
  end
end
