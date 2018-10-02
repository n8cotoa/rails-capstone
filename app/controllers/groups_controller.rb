class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end
  
  def create
    @group = Group.new(group_params)
    if @group.save 
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
  end
  
  def raidroom
    @group = Group.find(params[:group_id])
    @raid = Raid.find(@group.raid_id)
  end
  
private

  def group_params
    params.require(:group).permit(:name, :raid_id, :current_encounter_id)
    
  end
end