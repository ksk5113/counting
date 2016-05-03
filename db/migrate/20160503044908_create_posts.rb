class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string  :content
      t.integer :len1
      t.integer :len2
      t.integer :wrd

      t.timestamps null: false
    end
  end
end
