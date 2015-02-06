class Comment < ActiveRecord::Base

	validates :name, presence: true, length: {maximum: 30}
	validates :message, presence: true, length: {maximum: 555}
	
end
