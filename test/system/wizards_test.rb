require "application_system_test_case"

class WizardsTest < ApplicationSystemTestCase
  setup do
    @wizard = wizards(:one)
  end

  test "visiting the index" do
    visit wizards_url
    assert_selector "h1", text: "Wizards"
  end

  test "should create wizard" do
    visit wizards_url
    click_on "New wizard"

    click_on "Create Wizard"

    assert_text "Wizard was successfully created"
    click_on "Back"
  end

  test "should update Wizard" do
    visit wizard_url(@wizard)
    click_on "Edit this wizard", match: :first

    click_on "Update Wizard"

    assert_text "Wizard was successfully updated"
    click_on "Back"
  end

  test "should destroy Wizard" do
    visit wizard_url(@wizard)
    click_on "Destroy this wizard", match: :first

    assert_text "Wizard was successfully destroyed"
  end
end
