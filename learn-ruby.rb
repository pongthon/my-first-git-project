#Objective 1 create 'learningruby.rb'
class Person
	def initialize(name, age, status)
		@name = name
		@age = age
		@status = status
	end

	attr_accessor :name, :age, :status
end

module SpecialSkill
	attr_reader :special_skill
end

class Doctor < Person
	include SpecialSkill
	def initialize(name, age, status, title = 'no title')
		super(name, age, status)
		raise "Invalid title" unless ["M.D", "Surgeon", "no-title"].include?(title)
		@title = title
		@special_skill = "heal human"
	end

	attr_accessor :title

	def skills
		if @title == "M.D"
			"Medicine Doctr"
		elsif @title == "Surgeon"
			"Surgeon Doctor"
		else
			"Fake Doctor"
		end
	end
end

class Engineer < Person
	include SpecialSkill
	def initialize(name, age, status, special_skill)
		super(name, age, status)
		@special_skill = special_skill
	end
end

#doctor = Doctor.new("Doc", 60, "alive", "M.D")
#puts doctor.skills
#doctor = Doctor.new("Doc", 60, "alive", "d.D")
#------------------------------------------------------------------#
#Objective 2 Create Array
animals = ['Cat', 'Dog', 'Iguana', nil]
#puts animals
#------------------------------------------------------------------#
#Objective 3 Loop Array
animals.compact.each do |animal|
	puts animal
end