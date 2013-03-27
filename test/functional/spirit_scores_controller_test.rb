require 'test_helper'

class SpiritScoresControllerTest < ActionController::TestCase
  setup do
    @spirit_score = spirit_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spirit_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spirit_score" do
    assert_difference('SpiritScore.count') do
      post :create, spirit_score: { Spirit1: @spirit_score.Spirit1, Spirit2: @spirit_score.Spirit2, Spirit3: @spirit_score.Spirit3, Spirit4: @spirit_score.Spirit4, TeamName: @spirit_score.TeamName }
    end

    assert_redirected_to spirit_score_path(assigns(:spirit_score))
  end

  test "should show spirit_score" do
    get :show, id: @spirit_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spirit_score
    assert_response :success
  end

  test "should update spirit_score" do
    put :update, id: @spirit_score, spirit_score: { Spirit1: @spirit_score.Spirit1, Spirit2: @spirit_score.Spirit2, Spirit3: @spirit_score.Spirit3, Spirit4: @spirit_score.Spirit4, TeamName: @spirit_score.TeamName }
    assert_redirected_to spirit_score_path(assigns(:spirit_score))
  end

  test "should destroy spirit_score" do
    assert_difference('SpiritScore.count', -1) do
      delete :destroy, id: @spirit_score
    end

    assert_redirected_to spirit_scores_path
  end
end
