require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get :display" do
    get dashboards_:display_url
    assert_response :success
  end

end
