class ProjectsController < ApplicationController
 layout "project"
  def show
  	@project = Project.find params[:id]

  	@cases = @project.cases.order("id desc").limit(3)
  end

  def dingzhi
  	
  end
end
