class CallService < ActiveRecord::Base
    belongs_to :user

  	validates_presence_of :details

  	validates_length_of :details, allow_blank: false

end
