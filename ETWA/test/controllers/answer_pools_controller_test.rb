require 'test_helper'

class AnswerPoolsControllerTest < ActionController::TestCase
  setup do
    @answer_pool = answer_pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_pool" do
    assert_difference('AnswerPool.count') do
      post :create, answer_pool: { content: @answer_pool.content, correct: @answer_pool.correct, points: @answer_pool.points, status: @answer_pool.status }
    end

    assert_redirected_to answer_pool_path(assigns(:answer_pool))
  end

  test "should show answer_pool" do
    get :show, id: @answer_pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_pool
    assert_response :success
  end

  test "should update answer_pool" do
    patch :update, id: @answer_pool, answer_pool: { content: @answer_pool.content, correct: @answer_pool.correct, points: @answer_pool.points, status: @answer_pool.status }
    assert_redirected_to answer_pool_path(assigns(:answer_pool))
  end

  test "should destroy answer_pool" do
    assert_difference('AnswerPool.count', -1) do
      delete :destroy, id: @answer_pool
    end

    assert_redirected_to answer_pools_path
  end
end
