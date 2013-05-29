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
	attr_reader :name, :age, :gender
end
#------------------------------------------------------------------#
#Objective 6 Create "Mammal" class
module Legs
	attr_reader :legs
end
class Mammal < Animal
	include Legs
	def initialize(name, age, gender = "UnKnow", legs)
		super(name, age, gender)
		raise "Invalid legs" unless (1..50).include?(legs)
		@legs = legs
		@baby_food = 'Milk'
	end
	attr_reader :baby_food
end
#------------------------------------------------------------------#
#Objective 7 Create "Bird" class
class Bird < Animal
	include Legs
	def initialize(name, age, gender = "UnKnow")
		super(name, age, gender)
		@legs = 2
		@wings = 2
		#Birds must has 2 legs and 2 wings so no need to recive parameter
	end
	attr_reader :wings
end
#------------------------------------------------------------------#
#Objective 8 Create "Dog" class
module SpecialAbility
	attr_reader :special_ability
end

class Dog < Animal
	include Legs, SpecialAbility
	def initialize(name, age, gender = "UnKnow", special_ability)
		super(name, age, gender)
		@legs = 4
		@special_ability = special_ability
	end
	attr_accessor :best_friend
end
#------------------------------------------------------------------#
#Objective 9 Create "Cat" class
class Cat < Animal
	include Legs, SpecialAbility
	def initialize(name, age, gender = "UnKnow", claw_sharp_level)
		super(name, age, gender)
		raise "Invalid claw sharp level" unless (1..10).include?(claw_sharp_level)
		@legs = 4
		@claw_sharp_level = claw_sharp_level
		@special_ability = 'Climb the tree'
	end
	attr_reader :claw_sharp_level
end
#------------------------------------------------------------------#
#Objective 10
# Assume that "golden_retriever" is object value create from Dog class
#Q. golden_retriever.legs
#A. Get "legs" value from "Legs" module that include in "Dog" class

#Q. golden_retriever.best_friend
#A. Get "best_friend" data field value from "Dog" class

#Q. golden_retriever.special_ability
#A. Get "special_ability" value from "SpecialAbility" module that include in "Dog" class