class CasesController < ApplicationController
	layout "project"
  def index
  	@entry = find_commentable
  	if @entry
  	   @cases = @entry.cases.paginate(page: params[:page],per_page: 9).order("is_recommend desc")
  	else
  		@cases = Case.paginate(page: params[:page],per_page: 9).order("is_recommend desc")
  	end
  end

  def find_commentable
  params.each do |name, value|
    if name =~ /(.+)_id$/
      return $1.classify.constantize.find(value)
    end
  end
  nil
 end
  

end
