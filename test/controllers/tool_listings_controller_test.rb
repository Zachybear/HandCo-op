require 'test_helper'

class ToolListingsControllerTest < ActionController::TestCase
  setup do
    @tool_listing = tool_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tool_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tool_listing" do
    assert_difference('ToolListing.count') do
      post :create, tool_listing: {  }
    end

    assert_redirected_to tool_listing_path(assigns(:tool_listing))
  end

  test "should show tool_listing" do
    get :show, id: @tool_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tool_listing
    assert_response :success
  end

  test "should update tool_listing" do
    patch :update, id: @tool_listing, tool_listing: {  }
    assert_redirected_to tool_listing_path(assigns(:tool_listing))
  end

  test "should destroy tool_listing" do
    assert_difference('ToolListing.count', -1) do
      delete :destroy, id: @tool_listing
    end

    assert_redirected_to tool_listings_path
  end
end
