require "application_system_test_case"

class MircopostsTest < ApplicationSystemTestCase
  setup do
    @mircopost = mircoposts(:one)
  end

  test "visiting the index" do
    visit mircoposts_url
    assert_selector "h1", text: "Mircoposts"
  end

  test "creating a Mircopost" do
    visit mircoposts_url
    click_on "New Mircopost"

    fill_in "Content", with: @mircopost.content
    fill_in "User", with: @mircopost.user_id
    click_on "Create Mircopost"

    assert_text "Mircopost was successfully created"
    click_on "Back"
  end

  test "updating a Mircopost" do
    visit mircoposts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @mircopost.content
    fill_in "User", with: @mircopost.user_id
    click_on "Update Mircopost"

    assert_text "Mircopost was successfully updated"
    click_on "Back"
  end

  test "destroying a Mircopost" do
    visit mircoposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mircopost was successfully destroyed"
  end
end
