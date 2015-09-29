class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :password

      t.index :email, unique: true
      
      t.timestamps null: false
    end
  end
end
