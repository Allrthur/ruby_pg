require 'test_helper'

class RitualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ritual = rituals(:one)
  end

  test "should get index" do
    get rituals_url
    assert_response :success
  end

  test "should get new" do
    get new_ritual_url
    assert_response :success
  end

  test "should create ritual" do
    assert_difference('Ritual.count') do
      post rituals_url, params: { ritual: { description: @ritual.description, title: @ritual.title } }
    end

    assert_redirected_to ritual_url(Ritual.last)
  end

  test "should show ritual" do
    get ritual_url(@ritual)
    assert_response :success
  end

  test "should get edit" do
    get edit_ritual_url(@ritual)
    assert_response :success
  end

  test "should update ritual" do
    patch ritual_url(@ritual), params: { ritual: { description: @ritual.description, title: @ritual.title } }
    assert_redirected_to ritual_url(@ritual)
  end

  test "should destroy ritual" do
    assert_difference('Ritual.count', -1) do
      delete ritual_url(@ritual)
    end

    assert_redirected_to rituals_url
  end
end
