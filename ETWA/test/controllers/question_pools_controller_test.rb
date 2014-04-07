require 'test_helper'

class QuestionPoolsControllerTest < ActionController::TestCase
  setup do
    @question_pool = question_pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_pool" do
    assert_difference('QuestionPool.count') do
      post :create, question_pool: { content: @question_pool.content, difficulty: @question_pool.difficulty, status: @question_pool.status }
    end

    assert_redirected_to question_pool_path(assigns(:question_pool))
  end

  test "should show question_pool" do
    get :show, id: @question_pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_pool
    assert_response :success
  end

  test "should update question_pool" do
    patch :update, id: @question_pool, question_pool: { content: @question_pool.content, difficulty: @question_pool.difficulty, status: @question_pool.status }
    assert_redirected_to question_pool_path(assigns(:question_pool))
  end

  test "should destroy question_pool" do
    assert_difference('QuestionPool.count', -1) do
      delete :destroy, id: @question_pool
    end

    assert_redirected_to question_pools_path
  end
end
