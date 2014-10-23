class Page < ActiveRecord::Base
	has_one :content, :as => :item
	accepts_nested_attributes_for :content, allow_destroy: true 
end
