class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.integer :num_of_chapters

      t.timestamps
    end
  end
end
