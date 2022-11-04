require "application_system_test_case"

class BookmanagesTest < ApplicationSystemTestCase
  setup do
    @bookmanage = bookmanages(:one)
  end

  test "visiting the index" do
    visit bookmanages_url
    assert_selector "h1", text: "Bookmanages"
  end

  test "should create bookmanage" do
    visit bookmanages_url
    click_on "New bookmanage"

    fill_in "Author name", with: @bookmanage.author_name
    fill_in "Bm number", with: @bookmanage.bm_number
    fill_in "Book", with: @bookmanage.book_id
    fill_in "Book name", with: @bookmanage.book_name
    fill_in "Class name", with: @bookmanage.class_name
    fill_in "Day number", with: @bookmanage.day_number
    fill_in "First day", with: @bookmanage.first_day
    fill_in "Fullname", with: @bookmanage.fullname
    fill_in "Last day", with: @bookmanage.last_day
    fill_in "Note", with: @bookmanage.note
    fill_in "Source name", with: @bookmanage.source_name
    fill_in "Student", with: @bookmanage.student_id
    click_on "Create Bookmanage"

    assert_text "Bookmanage was successfully created"
    click_on "Back"
  end

  test "should update Bookmanage" do
    visit bookmanage_url(@bookmanage)
    click_on "Edit this bookmanage", match: :first

    fill_in "Author name", with: @bookmanage.author_name
    fill_in "Bm number", with: @bookmanage.bm_number
    fill_in "Book", with: @bookmanage.book_id
    fill_in "Book name", with: @bookmanage.book_name
    fill_in "Class name", with: @bookmanage.class_name
    fill_in "Day number", with: @bookmanage.day_number
    fill_in "First day", with: @bookmanage.first_day
    fill_in "Fullname", with: @bookmanage.fullname
    fill_in "Last day", with: @bookmanage.last_day
    fill_in "Note", with: @bookmanage.note
    fill_in "Source name", with: @bookmanage.source_name
    fill_in "Student", with: @bookmanage.student_id
    click_on "Update Bookmanage"

    assert_text "Bookmanage was successfully updated"
    click_on "Back"
  end

  test "should destroy Bookmanage" do
    visit bookmanage_url(@bookmanage)
    click_on "Destroy this bookmanage", match: :first

    assert_text "Bookmanage was successfully destroyed"
  end
end
