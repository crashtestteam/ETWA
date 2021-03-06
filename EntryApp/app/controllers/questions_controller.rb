class QuestionsController < ApplicationController
  before_filter :limited_access
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        manage_answers # insert or update
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render action: 'show', status: :created, location: @question }
      else
        format.html { render action: 'new' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
   # logger.debug "IMPORTANT INFO COMING NEXT "
   # logger.debug params[:answer]
    respond_to do |format|
      if @question.update(question_params)
        manage_answers # insert or update
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

def manage_answers
    logger.debug "IMPORTANT INFO HERE!"
    logger.debug params[:answer]
    params[:answer].each do |ans|
      ans= ans.merge(:question_id=> @question.id)
      if ans[:id] then
        #update
        Answer.update(ans[:id], ans.permit(:content, :points, :status, :correct, :question_id))
      else
        #create
        Answer.create(ans.permit(:content, :points, :status, :correct, :question_id))
      end
    end
end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:difficulty, :content, :status)
    end
end
