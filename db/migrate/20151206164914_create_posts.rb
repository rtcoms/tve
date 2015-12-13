class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :post_type, null: false
      t.date :post_for_date
      t.references :category, null: false
      t.string :tags
      t.string :subscribed_tags
      t.string :countries
      t.string :title, null: false
      t.text :summary
      t.integer :status, null: false
      t.references :user
      t.timestamps null: false
    end
  end
end
