class Category < ActiveRecord::Base
	validates_presence_of :name, :board
	
	belongs_to :board
	has_many :tickets, :dependent => :destroy
end
