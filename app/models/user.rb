class User < ActiveRecord::Base
	has_many :actions
end
