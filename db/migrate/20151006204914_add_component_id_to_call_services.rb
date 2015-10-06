class AddComponentIdToCallServices < ActiveRecord::Migration
  def change
    add_reference :call_services, :component, index: true, foreign_key: true
  end
end
