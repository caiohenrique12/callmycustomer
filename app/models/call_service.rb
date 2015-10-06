class CallService < ActiveRecord::Base

  	validates_presence_of :details

  	validates_length_of :details, allow_blank: false
    
end
