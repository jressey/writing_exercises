class WritingExercisesController < ApplicationController
  before_action :set_writing_exercise, only: %i[ show edit update destroy ]

  # GET /writing_exercises or /writing_exercises.json
  def index
    @writing_exercises = WritingExercise.all
  end

  # GET /writing_exercises/1 or /writing_exercises/1.json
  def show
  end

  # GET /writing_exercises/new
  def new
    @writing_exercise = WritingExercise.new
  end

  # GET /writing_exercises/1/edit
  def edit
  end

  # POST /writing_exercises or /writing_exercises.json
  def create
    @writing_exercise = WritingExercise.new(writing_exercise_params)

    respond_to do |format|
      if @writing_exercise.save
        format.html { redirect_to @writing_exercise, notice: "Writing exercise was successfully created." }
        format.json { render :show, status: :created, location: @writing_exercise }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @writing_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /writing_exercises/1 or /writing_exercises/1.json
  def update
    respond_to do |format|
      if @writing_exercise.update(writing_exercise_params)
        format.html { redirect_to @writing_exercise, notice: "Writing exercise was successfully updated." }
        format.json { render :show, status: :ok, location: @writing_exercise }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @writing_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /writing_exercises/1 or /writing_exercises/1.json
  def destroy
    @writing_exercise.destroy!

    respond_to do |format|
      format.html { redirect_to writing_exercises_path, status: :see_other, notice: "Writing exercise was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_writing_exercise
      @writing_exercise = WritingExercise.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def writing_exercise_params
      params.expect(writing_exercise: [ :duration_in_minutes, :category, :prompt, :output ])
    end
end
