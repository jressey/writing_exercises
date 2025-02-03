require "test_helper"

class WritingExercisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @writing_exercise = writing_exercises(:one)
  end

  test "should get index" do
    get writing_exercises_url
    assert_response :success
  end

  test "should get new" do
    get new_writing_exercise_url
    assert_response :success
  end

  test "should create writing_exercise" do
    assert_difference("WritingExercise.count") do
      post writing_exercises_url, params: { writing_exercise: { category: @writing_exercise.category, duration_in_minutes: @writing_exercise.duration_in_minutes, output: @writing_exercise.output, prompt: @writing_exercise.prompt } }
    end

    assert_redirected_to writing_exercise_url(WritingExercise.last)
  end

  test "should show writing_exercise" do
    get writing_exercise_url(@writing_exercise)
    assert_response :success
  end

  test "should get edit" do
    get edit_writing_exercise_url(@writing_exercise)
    assert_response :success
  end

  test "should update writing_exercise" do
    patch writing_exercise_url(@writing_exercise), params: { writing_exercise: { category: @writing_exercise.category, duration_in_minutes: @writing_exercise.duration_in_minutes, output: @writing_exercise.output, prompt: @writing_exercise.prompt } }
    assert_redirected_to writing_exercise_url(@writing_exercise)
  end

  test "should destroy writing_exercise" do
    assert_difference("WritingExercise.count", -1) do
      delete writing_exercise_url(@writing_exercise)
    end

    assert_redirected_to writing_exercises_url
  end
end
