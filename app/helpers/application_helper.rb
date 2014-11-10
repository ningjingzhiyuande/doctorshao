module ApplicationHelper
  def name_for_kind(kind)
  	case kind
  	when "xsjl"
  		return "学术交流"
  	when "mtbd"
  		return "媒体报道"
  	when "questions"
  		return '美容咨询'
  	end
  	return "学术交流"
  end
end
