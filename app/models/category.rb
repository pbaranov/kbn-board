class Category < ActiveRecord::Base
	validates_presence_of :name, :board
	
	belongs_to :board
	has_many :tickets, :dependent => :destroy

	def initialize(name=nil,board_id=nil)
		super(name)
		self.board_id=board_id
		self
	end
end
