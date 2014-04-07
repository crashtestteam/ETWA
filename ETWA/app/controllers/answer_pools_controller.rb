class AnswerPoolsController < ApplicationController
  before_action :set_answer_pool, only: [:show, :edit, :update, :destroy]

  # GET /answer_pools
  # GET /answer_pools.json
  def index
    @answer_pools = AnswerPool.all
  end

  # GET /answer_pools/1
  # GET /answer_pools/1.json
  def show
  end

  # GET /answer_pools/new
  def new
    @answer_pool = AnswerPool.new
  end

  # GET /answer_pools/1/edit
  def edit
  end

  # POST /answer_pools
  # POST /answer_pools.json
  def create
    @answer_pool = AnswerPool.new(answer_pool_params)

    respond_to do |format|
      if @answer_pool.save
        format.html { redirect_to @answer_pool, notice: 'Answer pool was successfully created.' }
        format.json { render action: 'show', status: :created, location: @answer_pool }
      else
        format.html { render action: 'new' }
        format.json { render json: @answer_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_pools/1
  # PATCH/PUT /answer_pools/1.json
  def update
    respond_to do |format|
      if @answer_pool.update(answer_pool_params)
        format.html { redirect_to @answer_pool, notice: 'Answer pool was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer_pool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_pools/1
  # DELETE /answer_pools/1.json
  def destroy
    @answer_pool.destroy
    respond_to do |format|
      format.html { redirect_to answer_pools_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_pool
      @answer_pool = AnswerPool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_pool_params
      params.require(:answer_pool).permit(:content, :points, :status, :correct)
    end
end
