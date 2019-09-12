require "application_system_test_case"

class ActressesTest < ApplicationSystemTestCase
  setup do
    @actress = actresses(:one)
  end

  test "visiting the index" do
    visit actresses_url
    assert_selector "h1", text: "Actresses"
  end

  test "creating a Actress" do
    visit actresses_url
    click_on "New Actress"

    fill_in "Image", with: @actress.image
    fill_in "Name", with: @actress.name
    click_on "Create Actress"

    assert_text "Actress was successfully created"
    click_on "Back"
  end

  test "updating a Actress" do
    visit actresses_url
    click_on "Edit", match: :first

    fill_in "Image", with: @actress.image
    fill_in "Name", with: @actress.name
    click_on "Update Actress"

    assert_text "Actress was successfully updated"
    click_on "Back"
  end

  test "destroying a Actress" do
    visit actresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actress was successfully destroyed"
  end
end
