class HomeController < ApplicationController
	
  def index
  	@special_projects = Project.special_projects
  	@other_projects = Project.other_projects.select(:id,:name)
  end

  def  about_shao

  end

  def about_hao
  end
  
end
