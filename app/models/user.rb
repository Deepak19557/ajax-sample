class User < ApplicationRecord
	has_many_attached :images

	after_update :msg  
	before_save :need 
	after_destroy :dest 
	after_save :best 
	before_update :nest 
	before_create :lets 

	def lets 
		puts 'make sure you are user' 
	end 

	def nest 
		puts "please sure" 
	end 

	def best 
		puts "saved successfuly" 
	end  

	def msg 
		puts "updated successfully" 
	end 

	def need   
		puts "created User" 
	end  

	def dest 
		puts "destroyed_successfully" 
	end 






end
