class AnswerInAttemptsController < ApplicationController
  before_action :set_answer_in_attempt, only: [:show, :edit, :update, :destroy]

  # GET /answer_in_attempts
  # GET /answer_in_attempts.json
  def index
    @answer_in_attempts = AnswerInAttempt.all
  end

  # GET /answer_in_attempts/1
  # GET /answer_in_attempts/1.json
  def show
  end

  # GET /answer_in_attempts/new
  def new
    @answer_in_attempt = AnswerInAttempt.new
  end

  # GET /answer_in_attempts/1/edit
  def edit
  end

  # POST /answer_in_attempts
  # POST /answer_in_attempts.json
  def create
    @answer_in_attempt = AnswerInAttempt.new(answer_in_attempt_params)

    respond_to do |format|
      if @answer_in_attempt.save
        format.html { redirect_to @answer_in_attempt, notice: 'Answer in attempt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @answer_in_attempt }
      else
        format.html { render action: 'new' }
        format.json { render json: @answer_in_attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_in_attempts/1
  # PATCH/PUT /answer_in_attempts/1.json
  def update
    respond_to do |format|
      if @answer_in_attempt.update(answer_in_attempt_params)
        format.html { redirect_to @answer_in_attempt, notice: 'Answer in attempt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer_in_attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_in_attempts/1
  # DELETE /answer_in_attempts/1.json
  def destroy
    @answer_in_attempt.destroy
    respond_to do |format|
      format.html { redirect_to answer_in_attempts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_in_attempt
      @answer_in_attempt = AnswerInAttempt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_in_attempt_params
      params.require(:answer_in_attempt).permit(:answer_id, :attempt_id, :chosen)
    end
end
