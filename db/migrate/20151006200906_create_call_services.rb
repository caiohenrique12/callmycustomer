class CreateCallServices < ActiveRecord::Migration
  def change
    create_table :call_services do |t|
      t.text :details

      t.timestamps null: false
    end
  end
end
