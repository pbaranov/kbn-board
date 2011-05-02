class Ticket < ActiveRecord::Base
	belongs_to :category
	has_many :actions, :dependent => :destroy
	validates_presence_of :category
	
	def initialize(name=nil,category_id=nil)
		super(name)
		self.category_id=category_id
		self
	end	
end
