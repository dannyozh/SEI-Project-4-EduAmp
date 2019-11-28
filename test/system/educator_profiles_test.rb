require "application_system_test_case"

class EducatorProfilesTest < ApplicationSystemTestCase
  setup do
    @educator_profile = educator_profiles(:one)
  end

  test "visiting the index" do
    visit educator_profiles_url
    assert_selector "h1", text: "Educator Profiles"
  end

  test "creating a Educator profile" do
    visit educator_profiles_url
    click_on "New Educator Profile"

    click_on "Create Educator profile"

    assert_text "Educator profile was successfully created"
    click_on "Back"
  end

  test "updating a Educator profile" do
    visit educator_profiles_url
    click_on "Edit", match: :first

    click_on "Update Educator profile"

    assert_text "Educator profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Educator profile" do
    visit educator_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Educator profile was successfully destroyed"
  end
end
