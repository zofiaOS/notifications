require 'test_helper'

class PortfolioEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get performance" do
    get portfolio_entries_performance_url
    assert_response :success
  end

end
