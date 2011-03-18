class Ticket < ActiveRecord::Base
	belongs_to :category
	has_many :actions, :dependent => :destroy
	validates_presence_of :category	
end
