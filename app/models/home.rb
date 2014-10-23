class Home < ActiveRecord::Base
	acts_as_list scope: [:flag]
	mount_uploader :image,ImageUploader
end
