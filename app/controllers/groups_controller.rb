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
  
  def show
    @group = Group.find(params[:id])
  end
  
private

  def group_params
    params.require(:group).permit(:name)
    
  end
end