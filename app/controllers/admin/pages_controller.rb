class Admin::PagesController < Admin::ApplicationController
  before_action :set_admin_page, only: [:show, :edit, :update, :destroy]
  def index
  	@pages = Page.all
  end

 
  def create
  	@page = Page.new(admin_page_params)  
    respond_to do |format|
      if @page.save
        format.html { redirect_to admin_pages_url, notice: '创建成功' }
        format.json { render action: 'show', status: :created, location: @page }
      else
        format.html { render action: 'new' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
  	@page = Page.new
  end

  def edit
  end

  def update
     respond_to do |format|
      if @page.update(admin_page_params)
        format.html { redirect_to admin_pages_url, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  	
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_page_params
       params.require(:page).permit(:title,{:content_attributes=>[:body]})
    end

end
