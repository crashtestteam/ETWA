class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @test = Test.new(test_params)
   logger.debug params[:timetable]
    respond_to do |format|
      if @test.save
         # @test.id new test id 
        timetable_manage

        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test }
      else
        format.html { render action: 'new' }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
     logger.debug params[:timetable]
    respond_to do |format|
      if @test.update(test_params)

        timetable_manage

        format.html { redirect_to @test, notice: 'Test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end
# inset OR update timetable
  def timetable_manage
    # TODO add support for multiple timeslots
    params[:timetable] = params[:timetable].merge(:test_id=> @test.id)
    logger.debug "IMPORTANT INFO HERE!"
    logger.debug params[:timetable]
    if params[:timetable][:id] then
       @timetable = Timetable.update(params[:timetable][:id], timetable_params) 
    else 
       @timetable = Timetable.create(timetable_params) 
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:title, :duration)
    end

     # Never trust parameters from the scary internet, only allow the white list through.
    def timetable_params
      params.require(:timetable).permit(:start, :end, :slots, :location, :test_id)
    end
end
