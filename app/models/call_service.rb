class CallService < ActiveRecord::Base
    belongs_to :user

  	validates_presence_of :details

  	validates_length_of :user_id, :service_id, :component_id, :situation_id, :details, allow_blank: false

end
