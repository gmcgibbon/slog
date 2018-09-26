class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.timestamps null: false
      t.references :blog, null: false
      t.string :title, null: false
      t.text :content, null: false
    end
  end
end
