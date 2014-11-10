class Admin::QuestionsController < Admin::ApplicationController
  
  def index
  	@entry = find_commentable
  	if @entry
  	   @questions = @entry.questions
  	else
  		@questions = Question.all
  	end

  
  end

  def show
  end

  def edit
  	@entry = find_commentable
  	#project = Project.find params[:project_id]
    @question = Question.find params[:id]
  end

  def update
  	@question = Question.find params[:id]
  	 respond_to do |format|
      if @question.update(admin_question_params)
        format.html { redirect_to admin_questions_url, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy  
    @question = Question.find params[:id]
    
    @question.destroy  
  
    respond_to do |format|  
      format.html { redirect_to :back, notice: '删除成功'}  
      format.json { head :no_content }  
    end  
  end  



  def new
  	@entry = find_commentable
  	#project = Project.find params[:project_id]
    @question = Question.new
  end

  def create
  	@entry = find_commentable
  	@question = Question.new(admin_question_params) 
  
  	@question.entry=@entry
    respond_to do |format|
      if @question.save
        format.html { redirect_to :back, notice: '创建成功' }
        format.json { render action: 'show', status: :created, location: @question}
      else
        format.html { render action: 'new' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
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
    def admin_question_params
       params.require(:question).permit(:question,:answer)
    end




end
