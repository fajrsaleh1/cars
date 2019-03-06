require "application_system_test_case"

class PersonPeopleTest < ApplicationSystemTestCase
  setup do
    @person_person = person_people(:one)
  end

  test "visiting the index" do
    visit person_people_url
    assert_selector "h1", text: "Person People"
  end

  test "creating a Person person" do
    visit person_people_url
    click_on "New Person Person"

    fill_in "First name", with: @person_person.first_name
    fill_in "Last name", with: @person_person.last_name
    click_on "Create Person person"

    assert_text "Person person was successfully created"
    click_on "Back"
  end

  test "updating a Person person" do
    visit person_people_url
    click_on "Edit", match: :first

    fill_in "First name", with: @person_person.first_name
    fill_in "Last name", with: @person_person.last_name
    click_on "Update Person person"

    assert_text "Person person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person person" do
    visit person_people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person person was successfully destroyed"
  end
end
