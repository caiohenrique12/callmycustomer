class AddIdSituationToCallServices < ActiveRecord::Migration
  def change
    add_column :call_services, :id_situation, :integer
  end
end
