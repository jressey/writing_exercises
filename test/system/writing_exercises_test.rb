require "application_system_test_case"

class WritingExercisesTest < ApplicationSystemTestCase
  setup do
    @writing_exercise = writing_exercises(:one)
  end

  test "visiting the index" do
    visit writing_exercises_url
    assert_selector "h1", text: "Writing exercises"
  end

  test "should create writing exercise" do
    visit writing_exercises_url
    click_on "New writing exercise"

    fill_in "Category", with: @writing_exercise.category
    fill_in "Duration in minutes", with: @writing_exercise.duration_in_minutes
    fill_in "Output", with: @writing_exercise.output
    fill_in "Prompt", with: @writing_exercise.prompt
    click_on "Create Writing exercise"

    assert_text "Writing exercise was successfully created"
    click_on "Back"
  end

  test "should update Writing exercise" do
    visit writing_exercise_url(@writing_exercise)
    click_on "Edit this writing exercise", match: :first

    fill_in "Category", with: @writing_exercise.category
    fill_in "Duration in minutes", with: @writing_exercise.duration_in_minutes
    fill_in "Output", with: @writing_exercise.output
    fill_in "Prompt", with: @writing_exercise.prompt
    click_on "Update Writing exercise"

    assert_text "Writing exercise was successfully updated"
    click_on "Back"
  end

  test "should destroy Writing exercise" do
    visit writing_exercise_url(@writing_exercise)
    click_on "Destroy this writing exercise", match: :first

    assert_text "Writing exercise was successfully destroyed"
  end
end
