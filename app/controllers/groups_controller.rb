class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @group = Group.new
  end
  
  def create
    @group = Group.new(group_params)
    if @group.save 
      ChatRoom.create(group_id: @group.id)
      redirect_to group_path(@group)
    else
      redirect_to new_group_path
    end
  end
  
  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to group_raidroom_path(@group)
    else
      redirect_to group_path(@group)
    end
  end
  
  def show
    @group = Group.find(params[:id])
    if @group.raid_id != nil
      redirect_to group_raidroom_path(@group)
    end
  end
  
  def raidroom
    @group = Group.find(params[:group_id])
    @chat_room = ChatRoom.find_by(group_id: params[:group_id])
    @message = Message.new
    @raid = Raid.find(@group.raid_id)
    @current_encounter = nil
    @map = nil
    if @group.current_encounter_id != nil
      @current_encounter = Encounter.find(@group.current_encounter_id)
      @map = Map.find(@current_encounter.id)
    end
  end
  
private

  def group_params
    params.require(:group).permit(:name, :raid_id, :current_encounter_id)
    
  end
end