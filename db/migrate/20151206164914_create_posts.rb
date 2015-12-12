class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :summary
      t.references :category
      t.references :user
      t.string :post_type
      t.integer :status
      t.date :post_date
      t.string :countries
      t.string :tags

      t.timestamps null: false
    end
  end
end
