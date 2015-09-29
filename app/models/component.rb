class Component < ActiveRecord::Base

	validates_presence_of :name

	validates_length_of :name, allow_blank: false
end
