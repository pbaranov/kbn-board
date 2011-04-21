class User < ActiveRecord::Base
	has_many :actions
	acts_as_authentic
	
	
end
