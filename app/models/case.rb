class Case < ActiveRecord::Base
	belongs_to :entry, :polymorphic => true 
	mount_uploader :before_image,ImageUploader
	mount_uploader :after_image,ImageUploader
end
