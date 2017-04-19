require 'test_helper'

class CountWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @count_word = count_words(:one)
  end

  test "should get index" do
    get count_words_url
    assert_response :success
  end

  test "should get new" do
    get new_count_word_url
    assert_response :success
  end

  test "should create count_word" do
    assert_difference('CountWord.count') do
      post count_words_url, params: { count_word: { text_to_count: @count_word.text_to_count, title: @count_word.title } }
    end

    assert_redirected_to count_word_url(CountWord.last)
  end

  test "should show count_word" do
    get count_word_url(@count_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_count_word_url(@count_word)
    assert_response :success
  end

  test "should update count_word" do
    patch count_word_url(@count_word), params: { count_word: { text_to_count: @count_word.text_to_count, title: @count_word.title } }
    assert_redirected_to count_word_url(@count_word)
  end

  test "should destroy count_word" do
    assert_difference('CountWord.count', -1) do
      delete count_word_url(@count_word)
    end

    assert_redirected_to count_words_url
  end
end
