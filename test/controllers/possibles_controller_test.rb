require 'test_helper'

class PossiblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @possible = possibles(:one)
  end

  test "should get index" do
    get possibles_url
    assert_response :success
  end

  test "should get new" do
    get new_possible_url
    assert_response :success
  end

  test "should create possible" do
    assert_difference('Possible.count') do
      post possibles_url, params: { possible: {  } }
    end

    assert_redirected_to possible_url(Possible.last)
  end

  test "should show possible" do
    get possible_url(@possible)
    assert_response :success
  end

  test "should get edit" do
    get edit_possible_url(@possible)
    assert_response :success
  end

  test "should update possible" do
    patch possible_url(@possible), params: { possible: {  } }
    assert_redirected_to possible_url(@possible)
  end

  test "should destroy possible" do
    assert_difference('Possible.count', -1) do
      delete possible_url(@possible)
    end

    assert_redirected_to possibles_url
  end
end
