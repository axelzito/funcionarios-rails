require 'test_helper'

class CivilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @civil = civils(:one)
  end

  test "should get index" do
    get civils_url
    assert_response :success
  end

  test "should get new" do
    get new_civil_url
    assert_response :success
  end

  test "should create civil" do
    assert_difference('Civil.count') do
      post civils_url, params: { civil: { civil: @civil.civil } }
    end

    assert_redirected_to civil_url(Civil.last)
  end

  test "should show civil" do
    get civil_url(@civil)
    assert_response :success
  end

  test "should get edit" do
    get edit_civil_url(@civil)
    assert_response :success
  end

  test "should update civil" do
    patch civil_url(@civil), params: { civil: { civil: @civil.civil } }
    assert_redirected_to civil_url(@civil)
  end

  test "should destroy civil" do
    assert_difference('Civil.count', -1) do
      delete civil_url(@civil)
    end

    assert_redirected_to civils_url
  end
end
