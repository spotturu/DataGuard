class MeetingPointsController < ApplicationController

  layout "application"
  
  before_action :set_meeting_point, only: [:show, :edit, :update, :destroy]

  # GET /meeting_points
  # GET /meeting_points.json
  def index
    @meeting_points = MeetingPoint.all
  end

  # GET /meeting_points/1
  # GET /meeting_points/1.json
  def show
  end

  # GET /meeting_points/new
  def new
    @meeting_point = MeetingPoint.new
  end

  # GET /meeting_points/1/edit
  def edit
  end

  # POST /meeting_points
  # POST /meeting_points.json
  def create
    @meeting_point = MeetingPoint.new(meeting_point_params)

    respond_to do |format|
      if @meeting_point.save
        format.html { redirect_to @meeting_point, notice: 'Meeting point was successfully created.' }
        format.json { render :show, status: :created, location: @meeting_point }
      else
        format.html { render :new }
        format.json { render json: @meeting_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meeting_points/1
  # PATCH/PUT /meeting_points/1.json
  def update
    respond_to do |format|
      if @meeting_point.update(meeting_point_params)
        format.html { redirect_to @meeting_point, notice: 'Meeting point was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting_point }
      else
        format.html { render :edit }
        format.json { render json: @meeting_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meeting_points/1
  # DELETE /meeting_points/1.json
  def destroy
    @meeting_point.destroy
    respond_to do |format|
      format.html { redirect_to meeting_points_url, notice: 'Meeting point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting_point
      @meeting_point = MeetingPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_point_params
      params.require(:meeting_point).permit(:name, :remarks, :memories)
    end
end
