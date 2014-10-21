class Admin::HomeController < Admin::ApplicationController
	#in_place_edit_for :home, :title,:url

  def index
  	@images = Home.where("flag='home_welcome'").order("position")
  end
  def images
  	@images = Home.where("flag='home_image'").order("position")
  end
  def huaxu
  	@images = Home.where("flag='abc_huaxu'").order("position")
  end

  def create
  	 @home = Home.new(admin_home_params)
  	 action,title = return_action_name(@home.flag)
    respond_to do |format|
      if @home.save
        format.html { redirect_to "/admin/home/"+action, notice: '添加成功' }
       
      else
        format.html { render action: 'images' }
       
      end
     end
   end

   def edit
     @home = Home.find params[:id]
     action,@title = return_action_name(@home.flag)
   end

   def update
   	 @home = Home.find params[:id]
   	 action,@title = return_action_name(@home.flag)
    respond_to do |format|
      if @home.update(admin_home_params)
        format.html { redirect_to "/admin/home/"+action, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
   end

   def show
   	render :images
   end

   def qa 
   	@images = Home.where("flag='qa'").order("position")
   end

   def video
   	@images = Home.where("flag='home_video'").order("position")
   end

  
   def friends
   	@images = Home.where("flag='home_friends'").order("position")

   end

  

   def move
   	home =  Home.find(params[:id])  
    home.move_higher if params["move_type"]=="up"
    home.move_lower if params["move_type"]=="down"

    render :json=>{"data"=>"成功！"}
   	#binding.pry
   end

  def destroy  
    @image = Home.find(params[:id])  
    action,title = return_action_name(@image.flag)
    @image.destroy  
  
    respond_to do |format|  
      format.html { redirect_to "/admin/home/"+action }  
      format.json { head :no_content }  
    end  
  end  
  private
   # Never trust parameters from the scary internet, only allow the white list through.
    def admin_home_params
       params.require(:home).permit(:title,:url,:image,:flag,:publish_at,:content)
      #params[:category]
    end

    def return_action_name(flag)
    	action,title = case flag
  	    when "home_image"
  	 	  ["images","首页轮播图管理"]
  	    when "home_video"
  	   	  ["video","视频管理"]
  	    when "home_friends"
  	 	  ["friends","友情链接管理"]
  	    when "qa"
  	 	   ["qa","赴美疑问管理"]
  	 	when "abc_huaxu"
  	 		['huaxu','ABC花絮管理']
  	 	when "home_welcome"
  	 	   ["","欢迎和祝福"]
  	 	   	
  	    end
  	    return action,title
    end
end
