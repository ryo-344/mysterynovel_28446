class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title,     null: false
      t.string :author,    null: false
      t.integer :genre_id, null: false
      t.text :content,     null: false
      t.integer :user_id,  null: false, forignkey: true
      t.timestamps
    end
  end
end
