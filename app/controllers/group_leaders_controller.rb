class GroupLeadersController < ApplicationController
  before_action :set_group_leader, only: [:show, :edit, :update, :destroy]

  # GET /group_leaders
  # GET /group_leaders.json
  def index
    @group_leaders = GroupLeader.all
  end

  # GET /group_leaders/1
  # GET /group_leaders/1.json
  def show
  end

  # GET /group_leaders/new
  def new
    @group_leader = GroupLeader.new
  end

  # GET /group_leaders/1/edit
  def edit
  end

  # POST /group_leaders
  # POST /group_leaders.json
  def create
    @group_leader = GroupLeader.new(group_leader_params)

    respond_to do |format|
      if @group_leader.save
        format.html { redirect_to @group_leader, notice: 'Group leader was successfully created.' }
        format.json { render :show, status: :created, location: @group_leader }
      else
        format.html { render :new }
        format.json { render json: @group_leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_leaders/1
  # PATCH/PUT /group_leaders/1.json
  def update
    respond_to do |format|
      if @group_leader.update(group_leader_params)
        format.html { redirect_to @group_leader, notice: 'Group leader was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_leader }
      else
        format.html { render :edit }
        format.json { render json: @group_leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_leaders/1
  # DELETE /group_leaders/1.json
  def destroy
    @group_leader.destroy
    respond_to do |format|
      format.html { redirect_to group_leaders_url, notice: 'Group leader was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_leader
      @group_leader = GroupLeader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_leader_params
      params.fetch(:group_leader, {})
    end
end
