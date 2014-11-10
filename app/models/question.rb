class Question < ActiveRecord::Base
	belongs_to :entry, :polymorphic => true 
end
