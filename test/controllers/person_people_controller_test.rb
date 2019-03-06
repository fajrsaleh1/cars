require 'test_helper'

class PersonPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_person = person_people(:one)
  end

  test "should get index" do
    get person_people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_person_url
    assert_response :success
  end

  test "should create person_person" do
    assert_difference('PersonPerson.count') do
      post person_people_url, params: { person_person: { first_name: @person_person.first_name, last_name: @person_person.last_name } }
    end

    assert_redirected_to person_person_url(PersonPerson.last)
  end

  test "should show person_person" do
    get person_person_url(@person_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_person_url(@person_person)
    assert_response :success
  end

  test "should update person_person" do
    patch person_person_url(@person_person), params: { person_person: { first_name: @person_person.first_name, last_name: @person_person.last_name } }
    assert_redirected_to person_person_url(@person_person)
  end

  test "should destroy person_person" do
    assert_difference('PersonPerson.count', -1) do
      delete person_person_url(@person_person)
    end

    assert_redirected_to person_people_url
  end
end
