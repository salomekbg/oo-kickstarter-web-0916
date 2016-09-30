class Project
	attr_accessor :title, :backers

	def initialize(title)
		@title = title
		@backers = []
	end

	def add_backer(backer)
		@backers << Backer.new(backer).name
		backer.backed_projects << self
	end
end