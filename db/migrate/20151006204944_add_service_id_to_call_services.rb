class AddServiceIdToCallServices < ActiveRecord::Migration
  def change
    add_reference :call_services, :service, index: true, foreign_key: true
  end
end
