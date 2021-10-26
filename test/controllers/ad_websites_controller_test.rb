require "test_helper"

class AdWebsitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_website = ad_websites(:one)
  end

  test "should get index" do
    get ad_websites_url
    assert_response :success
  end

  test "should get new" do
    get new_ad_website_url
    assert_response :success
  end

  test "should create ad_website" do
    assert_difference('AdWebsite.count') do
      post ad_websites_url, params: { ad_website: { Email: @ad_website.Email, Name: @ad_website.Name, Name_of_Bussiness: @ad_website.Name_of_Bussiness, Phone_No: @ad_website.Phone_No } }
    end

    assert_redirected_to ad_website_url(AdWebsite.last)
  end

  test "should show ad_website" do
    get ad_website_url(@ad_website)
    assert_response :success
  end

  test "should get edit" do
    get edit_ad_website_url(@ad_website)
    assert_response :success
  end

  test "should update ad_website" do
    patch ad_website_url(@ad_website), params: { ad_website: { Email: @ad_website.Email, Name: @ad_website.Name, Name_of_Bussiness: @ad_website.Name_of_Bussiness, Phone_No: @ad_website.Phone_No } }
    assert_redirected_to ad_website_url(@ad_website)
  end

  test "should destroy ad_website" do
    assert_difference('AdWebsite.count', -1) do
      delete ad_website_url(@ad_website)
    end

    assert_redirected_to ad_websites_url
  end
end
