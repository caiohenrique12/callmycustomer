class CreateCallServices < ActiveRecord::Migration
  def change
    create_table :call_services do |t|
      t.integer :id_customer
      t.integer :id_service
      t.integer :id_component
      t.text :details

      t.timestamps null: false
    end
  end
end
