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
	#puts animal
end
#------------------------------------------------------------------#
#Objective 4 Create hash value
person = { name: "Pongthon", email:"pongthon@outlook.com", colors:['red','black','blue'] }
#puts person
#------------------------------------------------------------------#
#Objective 5 Create "Animal" class
class Animal
	def initialize(name, age, gender = "UnKnow")
		raise "Empty name" if name.empty?
		raise "Invalid age" unless (1..200).include?(age)
		raise "Invalid gender" unless ["Male", "FeMale", "UnKnow"].include?(gender)
		@name = name
		@age = age
		@gender = gender
	end
	attr_accessor :name, :age, :gender
end
#------------------------------------------------------------------#
#Objective 6 Create "Mammal" class
class Mammal < Animal
	def initialize(name, age, gender = "UnKnow", legs)
		super(name, age, gender)
		raise "Invalid legs" unless (1..50).include?(legs)
		@legs = legs
		@baby_food = 'Milk'
	end
	attr_accessor :name, :age, :gender, :legs, :baby_food
end