class GroupsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @groups = Group.all
    @group = Group.new
  end
  
  def new
    @group = Group.new
    redirect_to groups_path
  end
  
  def create
    @group = Group.new(group_params)
    if @group.save 
      flash[:success] = 'Your group has been created!'
      ChatRoom.create(group_id: @group.id)
      redirect_to group_path(@group)
    else
      flash[:error] = 'Group not created, please check your input.'
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
    if @group.users.include?(current_user)
      if @group.raid_id != nil
        redirect_to group_raidroom_path(@group)
      end
    elsif @group.users.count <= 6
      @group.users.push(current_user)
      if @group.raid_id != nil
        redirect_to group_raidroom_path(@group)
      end
    else
      flash[:error] = 'This group is full.'
      redirect_to groups_path
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
  
  def leave_raidroom
    @group = Group.find(params[:group_id])
    @group.users.destroy(current_user)
    flash[:success] = 'You\'ve successfully left the group.'
    redirect_to groups_path
  end
  
private

  def group_params
    params.require(:group).permit(:name, :raid_id, :current_encounter_id)
    
  end
end