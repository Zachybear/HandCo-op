require 'test_helper'

class SkillListingsControllerTest < ActionController::TestCase
  setup do
    @skill_listing = skill_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_listing" do
    assert_difference('SkillListing.count') do
      post :create, skill_listing: {  }
    end

    assert_redirected_to skill_listing_path(assigns(:skill_listing))
  end

  test "should show skill_listing" do
    get :show, id: @skill_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skill_listing
    assert_response :success
  end

  test "should update skill_listing" do
    patch :update, id: @skill_listing, skill_listing: {  }
    assert_redirected_to skill_listing_path(assigns(:skill_listing))
  end

  test "should destroy skill_listing" do
    assert_difference('SkillListing.count', -1) do
      delete :destroy, id: @skill_listing
    end

    assert_redirected_to skill_listings_path
  end
end
