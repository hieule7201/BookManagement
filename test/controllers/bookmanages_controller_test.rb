require "test_helper"

class BookmanagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookmanage = bookmanages(:one)
  end

  test "should get index" do
    get bookmanages_url
    assert_response :success
  end

  test "should get new" do
    get new_bookmanage_url
    assert_response :success
  end

  test "should create bookmanage" do
    assert_difference("Bookmanage.count") do
      post bookmanages_url, params: { bookmanage: { author_name: @bookmanage.author_name, bm_number: @bookmanage.bm_number, book_id: @bookmanage.book_id, book_name: @bookmanage.book_name, class_name: @bookmanage.class_name, day_number: @bookmanage.day_number, first_day: @bookmanage.first_day, fullname: @bookmanage.fullname, last_day: @bookmanage.last_day, note: @bookmanage.note, source_name: @bookmanage.source_name, student_id: @bookmanage.student_id } }
    end

    assert_redirected_to bookmanage_url(Bookmanage.last)
  end

  test "should show bookmanage" do
    get bookmanage_url(@bookmanage)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookmanage_url(@bookmanage)
    assert_response :success
  end

  test "should update bookmanage" do
    patch bookmanage_url(@bookmanage), params: { bookmanage: { author_name: @bookmanage.author_name, bm_number: @bookmanage.bm_number, book_id: @bookmanage.book_id, book_name: @bookmanage.book_name, class_name: @bookmanage.class_name, day_number: @bookmanage.day_number, first_day: @bookmanage.first_day, fullname: @bookmanage.fullname, last_day: @bookmanage.last_day, note: @bookmanage.note, source_name: @bookmanage.source_name, student_id: @bookmanage.student_id } }
    assert_redirected_to bookmanage_url(@bookmanage)
  end

  test "should destroy bookmanage" do
    assert_difference("Bookmanage.count", -1) do
      delete bookmanage_url(@bookmanage)
    end

    assert_redirected_to bookmanages_url
  end
end
