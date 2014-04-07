class QuestionPoolsController < ApplicationController
  before_action :set_question_pool, only: [:show, :edit, :update, :destroy]

  # GET /question_pools
  # GET /question_pools.json
  def index
    @question_pools = QuestionPool.all
  end

  # GET /question_pools/1
  # GET /question_pools/1.json
  def show
  end

  # GET /question_pools/new
  def new
    @question_pool = QuestionPool.new
  end

  # GET /question_pools/1/edit
  def edit
  end

  # POST /question_pools
  # POST /question_pools.json
  def create
    @question_pool = QuestionPool.new(question_pool_params)

    respond_to do |format|
      if @question_pool.save
        format.html { redirect_to @question_pool, notice: 'Question pool was successfully created.' }
        format.json { render action: 'show', status: :created, location: @question_pool }
      else
        format.html { render action: 'new' }
        format.json { render json: @question_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_pools/1
  # PATCH/PUT /question_pools/1.json
  def update
    respond_to do |format|
      if @question_pool.update(question_pool_params)
        format.html { redirect_to @question_pool, notice: 'Question pool was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_pools/1
  # DELETE /question_pools/1.json
  def destroy
    @question_pool.destroy
    respond_to do |format|
      format.html { redirect_to question_pools_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_pool
      @question_pool = QuestionPool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_pool_params
      params.require(:question_pool).permit(:difficulty, :content, :status)
    end
end
