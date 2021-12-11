class ChaptersRef < ActiveRecord::Migration[6.0]
  def change
      add_reference :chapters, :book, index: true, foreign_key: true
      add_reference :chapters, :user, index: true, foreign_key: true
  end
end
