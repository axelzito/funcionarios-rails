require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get busca" do
    get search_busca_url
    assert_response :success
  end

end
