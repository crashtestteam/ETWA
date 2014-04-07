require 'test_helper'

class AnswerInAttemptsControllerTest < ActionController::TestCase
  setup do
    @answer_in_attempt = answer_in_attempts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_in_attempts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_in_attempt" do
    assert_difference('AnswerInAttempt.count') do
      post :create, answer_in_attempt: { answer_id: @answer_in_attempt.answer_id, attempt_id: @answer_in_attempt.attempt_id, chosen: @answer_in_attempt.chosen }
    end

    assert_redirected_to answer_in_attempt_path(assigns(:answer_in_attempt))
  end

  test "should show answer_in_attempt" do
    get :show, id: @answer_in_attempt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_in_attempt
    assert_response :success
  end

  test "should update answer_in_attempt" do
    patch :update, id: @answer_in_attempt, answer_in_attempt: { answer_id: @answer_in_attempt.answer_id, attempt_id: @answer_in_attempt.attempt_id, chosen: @answer_in_attempt.chosen }
    assert_redirected_to answer_in_attempt_path(assigns(:answer_in_attempt))
  end

  test "should destroy answer_in_attempt" do
    assert_difference('AnswerInAttempt.count', -1) do
      delete :destroy, id: @answer_in_attempt
    end

    assert_redirected_to answer_in_attempts_path
  end
end
