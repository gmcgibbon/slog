class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.timestamps null: false
      t.string :title, null: false
    end
  end
end
