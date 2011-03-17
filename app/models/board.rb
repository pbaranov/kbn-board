class Board < ActiveRecord::Base
	has_many :categories, :dependent => :destroy
	validates_presence_of :name
	
end
