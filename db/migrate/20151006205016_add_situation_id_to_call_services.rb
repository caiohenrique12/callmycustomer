class AddSituationIdToCallServices < ActiveRecord::Migration
  def change
    add_reference :call_services, :situation, index: true, foreign_key: true
  end
end
