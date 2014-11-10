class Admin::CasesController < Admin::ApplicationController
  def index
  	@entry = find_commentable
  	if @entry
  	   @cases = @entry.cases
  	else
  		@cases = Case.all
  	end

  end

  def show

  end

  def recommend
  	ca = Case.find params[:id]
  	ca.toggle!(:is_recommend)
 	respond_to do |format|
        format.html { redirect_to :back, notice: '推荐成功' }
        format.json { head :no_content }
    end
  end

  def new
  	@entry = find_commentable
  	#project = Project.find params[:project_id]
    @case = Case.new
  end

  def create
  	@entry = find_commentable
  	@case = Case.new(admin_case_params) 
 
  	@case.entry=@entry
    respond_to do |format|
      if @case.save
        format.html { redirect_to :back, notice: '创建成功' }
        format.json { render action: 'show', status: :created, location: @case}
      else
        format.html { render action: 'new' }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end

  end

   def edit
  	@entry = find_commentable
  	#project = Project.find params[:project_id]
    @case = Case.find params[:id]
  end

  def update
  	@case = Case.find params[:id]
  	 respond_to do |format|
      if @case.update(admin_case_params)
        format.html { redirect_to admin_cases_url, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy  
    @case = Case.find params[:id]
    
    @case.destroy  
  
    respond_to do |format|  
      format.html { redirect_to :back, notice: '删除成功'}  
      format.json { head :no_content }  
    end  
  end  

  private
  def find_commentable
  params.each do |name, value|
    if name =~ /(.+)_id$/
      return $1.classify.constantize.find(value)
    end
  end
  nil
 end
  


    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_case_params
       params.require(:case).permit(:title,:before_image,:after_image,:info)
    end

end
