class FacialsController < ApplicationController
  def index
  end

  def show

     @project = Project.find params[:id]
     @parent_id = @project.root? ? @project.id : @project.root.id
  end
end
