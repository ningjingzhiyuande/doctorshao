class HomeController < ApplicationController
	
  def index
  	@special_projects = Project.special_projects
  	@other_projects = Project.other_projects.select(:id,:name)
  	@zixun = Article.where("kind"=>"questions").order("is_recommend desc,updated_at desc").limit(2)
    @articles = Article.where("kind!='questions'").order("is_recommend desc,updated_at desc").limit(12)
    @cases = Case.order("is_recommend desc,updated_at desc").limit(4)
   
   
  end

  def  about_shao
  	@page = Page.find_by_kind "about_doctorshao"
  end

  def about_hao
  	@page = Page.find_by_kind "about_doctorhao"
  end
  
end
