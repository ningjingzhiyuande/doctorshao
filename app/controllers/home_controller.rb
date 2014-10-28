class HomeController < ApplicationController
  def index
  	@special_projects = Project.special_projects
  end

  def  about_shao
  end

  def about_hao
  end
  
end
