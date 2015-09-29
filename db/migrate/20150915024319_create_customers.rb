class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.integer :phone1
      t.integer :phone2
      t.integer :age
      t.string :sex

      t.timestamps null: false
    end
  end
end
