class Admin::ProjectsController < Admin::ApplicationController
  before_action :set_admin_project, only: [:show, :edit, :update, :destroy]
  def index
  	@projects = Project.special_projects
  end

  def other
  	@projects = Project.other_projects
  end

  def create
  	@project = Project.new(admin_project_params)  
    respond_to do |format|
      if @project.save
        format.html { redirect_to admin_projects_url, notice: '创建成功' }
        format.json { render action: 'show', status: :created, location: @admin_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
  	@project = Project.new
  end

  def edit
  end

  def update
     respond_to do |format|
      if @project.update(admin_project_params)
        format.html { redirect_to admin_projects_url, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  	
  end
 
 def destroy
    @project.destroy
    redirect_to admin_projects_url, notice: '删除成功'
 end
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_project_params
       params.require(:project).permit(:name,:info,:image,:is_special,{:content_attributes=>[:body]})
    end

end
