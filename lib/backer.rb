class Backer
	attr_accessor :name, :backed_projects

	def initialize(name)
		@name = name
		@backed_projects = []
	end

	def back_project(project)
		@backed_projects << Project.new(project).title
		project.backers << self
	end
end