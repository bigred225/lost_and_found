require "test_helper"

class FoundItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @found_item = found_items(:one)
  end

  test "should get index" do
    get found_items_url
    assert_response :success
  end

  test "should get new" do
    get new_found_item_url
    assert_response :success
  end

  test "should create found_item" do
    assert_difference("FoundItem.count") do
      post found_items_url, params: { found_item: { date_found: @found_item.date_found, description: @found_item.description, expiration_date: @found_item.expiration_date, location: @found_item.location, name: @found_item.name } }
    end

    assert_redirected_to found_item_url(FoundItem.last)
  end

  test "should show found_item" do
    get found_item_url(@found_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_found_item_url(@found_item)
    assert_response :success
  end

  test "should update found_item" do
    patch found_item_url(@found_item), params: { found_item: { date_found: @found_item.date_found, description: @found_item.description, expiration_date: @found_item.expiration_date, location: @found_item.location, name: @found_item.name } }
    assert_redirected_to found_item_url(@found_item)
  end

  test "should destroy found_item" do
    assert_difference("FoundItem.count", -1) do
      delete found_item_url(@found_item)
    end

    assert_redirected_to found_items_url
  end
end
