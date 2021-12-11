class CreateChapters < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.integer :order
      t.text :content
      t.string :title
      
      t.timestamps
    end
  end
end
