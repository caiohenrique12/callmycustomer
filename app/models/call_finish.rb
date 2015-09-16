class CallFinish < ActiveRecord::Base

	validates_presence_of :id_call, :id_user, :observation, :active

	validates_length_of :id_call, :id_user, :observation, :active, allow_blank: false
end
