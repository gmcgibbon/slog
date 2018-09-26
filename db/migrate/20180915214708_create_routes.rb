class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.timestamps null: false
      t.integer :shard, null: false
      t.references :blog, null: false
    end
  end
end
