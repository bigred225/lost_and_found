require "application_system_test_case"

class FoundItemsTest < ApplicationSystemTestCase
  setup do
    @found_item = found_items(:one)
  end

  test "visiting the index" do
    visit found_items_url
    assert_selector "h1", text: "Found items"
  end

  test "should create found item" do
    visit found_items_url
    click_on "New found item"

    fill_in "Date found", with: @found_item.date_found
    fill_in "Description", with: @found_item.description
    fill_in "Expiration date", with: @found_item.expiration_date
    fill_in "Location", with: @found_item.location
    fill_in "Name", with: @found_item.name
    click_on "Create Found item"

    assert_text "Found item was successfully created"
    click_on "Back"
  end

  test "should update Found item" do
    visit found_item_url(@found_item)
    click_on "Edit this found item", match: :first

    fill_in "Date found", with: @found_item.date_found
    fill_in "Description", with: @found_item.description
    fill_in "Expiration date", with: @found_item.expiration_date
    fill_in "Location", with: @found_item.location
    fill_in "Name", with: @found_item.name
    click_on "Update Found item"

    assert_text "Found item was successfully updated"
    click_on "Back"
  end

  test "should destroy Found item" do
    visit found_item_url(@found_item)
    click_on "Destroy this found item", match: :first

    assert_text "Found item was successfully destroyed"
  end
end
