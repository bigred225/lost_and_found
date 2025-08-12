require "application_system_test_case"

class LostItemsTest < ApplicationSystemTestCase
  setup do
    @lost_item = lost_items(:one)
  end

  test "visiting the index" do
    visit lost_items_url
    assert_selector "h1", text: "Lost items"
  end

  test "should create lost item" do
    visit lost_items_url
    click_on "New lost item"

    fill_in "Date lost", with: @lost_item.date_lost
    fill_in "Description", with: @lost_item.description
    fill_in "Expiration date", with: @lost_item.expiration_date
    fill_in "Location lost", with: @lost_item.location_lost
    fill_in "Name", with: @lost_item.name
    check "Private entry" if @lost_item.private_entry
    click_on "Create Lost item"

    assert_text "Lost item was successfully created"
    click_on "Back"
  end

  test "should update Lost item" do
    visit lost_item_url(@lost_item)
    click_on "Edit this lost item", match: :first

    fill_in "Date lost", with: @lost_item.date_lost
    fill_in "Description", with: @lost_item.description
    fill_in "Expiration date", with: @lost_item.expiration_date
    fill_in "Location lost", with: @lost_item.location_lost
    fill_in "Name", with: @lost_item.name
    check "Private entry" if @lost_item.private_entry
    click_on "Update Lost item"

    assert_text "Lost item was successfully updated"
    click_on "Back"
  end

  test "should destroy Lost item" do
    visit lost_item_url(@lost_item)
    click_on "Destroy this lost item", match: :first

    assert_text "Lost item was successfully destroyed"
  end
end
