class AddUserIdToCallServices < ActiveRecord::Migration
  def change
    add_reference :call_services, :user, index: true, foreign_key: true
  end
end
