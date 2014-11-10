class FacialsController < ApplicationController
  def index
  end

  def show

     @project = Project.find params[:id]
     @questions = @project.questions.limit(5)
     @cases = @project.cases.limit(5)
     @parent_id = @project.root? ? @project.id : @project.root.id
  end
end
