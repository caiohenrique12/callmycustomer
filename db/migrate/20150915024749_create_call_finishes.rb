class CreateCallFinishes < ActiveRecord::Migration
  def change
    create_table :call_finishes do |t|
      t.integer :id_call
      t.integer :id_user
      t.text :observation
      t.boolean :active

      t.timestamps null: false
    end
  end
end
