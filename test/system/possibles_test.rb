require "application_system_test_case"

class PossiblesTest < ApplicationSystemTestCase
  setup do
    @possible = possibles(:one)
  end

  test "visiting the index" do
    visit possibles_url
    assert_selector "h1", text: "Possibles"
  end

  test "creating a Possible" do
    visit possibles_url
    click_on "New Possible"

    click_on "Create Possible"

    assert_text "Possible was successfully created"
    click_on "Back"
  end

  test "updating a Possible" do
    visit possibles_url
    click_on "Edit", match: :first

    click_on "Update Possible"

    assert_text "Possible was successfully updated"
    click_on "Back"
  end

  test "destroying a Possible" do
    visit possibles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Possible was successfully destroyed"
  end
end
