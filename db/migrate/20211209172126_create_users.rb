class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :avatar,   null: true
      t.string :hashed_password
      t.string :salt

      t.timestamps
    end
    add_index :users, :email,                unique: true
  end
end