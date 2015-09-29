class CallService < ActiveRecord::Base

	validates_presence_of :id_customer, :id_service, :id_component, :details

	validates_length_of :id_customer, :id_service, :id_component, :details, allow_blank: false
end
