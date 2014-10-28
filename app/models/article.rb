class Article < ActiveRecord::Base
	has_one :content, :as => :item
	accepts_nested_attributes_for :content, allow_destroy: true 
	mount_uploader :image,ImageUploader
    KIND={"xsjl"=>"学术交流","mtbd"=>"媒体报道",'questions'=>"美容咨询"}
end
