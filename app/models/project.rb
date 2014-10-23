class Project < ActiveRecord::Base
	acts_as_list scope: [:is_special]
	has_one :content, :as => :item
	accepts_nested_attributes_for :content, allow_destroy: true 
	mount_uploader :image,ImageUploader

end
