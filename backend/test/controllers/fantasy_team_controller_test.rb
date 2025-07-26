require "test_helper"

class FantasyTeamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fantasy_team_index_url
    assert_response :success
  end
end
