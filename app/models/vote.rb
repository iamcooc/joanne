class Vote < ActiveRecord::Base
	validates :ip, uniqueness: true
end
