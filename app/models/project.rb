class Project < ActiveRecord::Base
	acts_as_list scope: [:is_special,:parent_id]
	acts_as_tree
	has_one :content, :as => :item
	accepts_nested_attributes_for :content, allow_destroy: true 
	mount_uploader :image,ImageUploader

	#default_scope { where(parent_id: nil) }

    scope :special_projects, -> { where(is_special: true,parent_id: nil) }
    scope :other_projects, -> { where(is_special: false,parent_id: nil) }
end
