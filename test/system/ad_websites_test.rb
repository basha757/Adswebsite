require "application_system_test_case"

class AdWebsitesTest < ApplicationSystemTestCase
  setup do
    @ad_website = ad_websites(:one)
  end

  test "visiting the index" do
    visit ad_websites_url
    assert_selector "h1", text: "Ad Websites"
  end

  test "creating a Ad website" do
    visit ad_websites_url
    click_on "New Ad Website"

    fill_in "Email", with: @ad_website.Email
    fill_in "Name", with: @ad_website.Name
    fill_in "Name of bussiness", with: @ad_website.Name_of_Bussiness
    fill_in "Phone no", with: @ad_website.Phone_No
    click_on "Create Ad website"

    assert_text "Ad website was successfully created"
    click_on "Back"
  end

  test "updating a Ad website" do
    visit ad_websites_url
    click_on "Edit", match: :first

    fill_in "Email", with: @ad_website.Email
    fill_in "Name", with: @ad_website.Name
    fill_in "Name of bussiness", with: @ad_website.Name_of_Bussiness
    fill_in "Phone no", with: @ad_website.Phone_No
    click_on "Update Ad website"

    assert_text "Ad website was successfully updated"
    click_on "Back"
  end

  test "destroying a Ad website" do
    visit ad_websites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ad website was successfully destroyed"
  end
end
