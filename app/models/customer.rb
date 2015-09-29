class Customer < ActiveRecord::Base
	
	validates_presence_of :name, :address, :phone1, :phone2, :age, :sex
	
	validates_length_of :name, :address, :phone1, :phone2, :age, :sex, allow_blank: false
end
