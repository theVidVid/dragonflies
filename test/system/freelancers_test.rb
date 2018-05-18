require "application_system_test_case"

class FreelancersTest < ApplicationSystemTestCase
  setup do
    @freelancer = freelancers(:one)
  end

  test "visiting the index" do
    visit freelancers_url
    assert_selector "h1", text: "Freelancers"
  end

  test "creating a Freelancer" do
    visit freelancers_url
    click_on "New Freelancer"

    fill_in "Bio", with: @freelancer.bio
    fill_in "First Name", with: @freelancer.first_name
    fill_in "Last Name", with: @freelancer.last_name
    fill_in "Location", with: @freelancer.location
    fill_in "Picture", with: @freelancer.picture
    fill_in "User", with: @freelancer.user_id
    fill_in "Userpic", with: @freelancer.userpic
    click_on "Create Freelancer"

    assert_text "Freelancer was successfully created"
    click_on "Back"
  end

  test "updating a Freelancer" do
    visit freelancers_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @freelancer.bio
    fill_in "First Name", with: @freelancer.first_name
    fill_in "Last Name", with: @freelancer.last_name
    fill_in "Location", with: @freelancer.location
    fill_in "Picture", with: @freelancer.picture
    fill_in "User", with: @freelancer.user_id
    fill_in "Userpic", with: @freelancer.userpic
    click_on "Update Freelancer"

    assert_text "Freelancer was successfully updated"
    click_on "Back"
  end

  test "destroying a Freelancer" do
    visit freelancers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Freelancer was successfully destroyed"
  end
end
