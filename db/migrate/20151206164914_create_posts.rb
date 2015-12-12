class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :summary
      t.string :post_type
      t.integer :status
      t.date :post_for_date
      t.string :countries
      t.string :subscribed_tags
      t.string :tags
      t.references :category
      t.references :user

      t.timestamps null: false
    end
  end
end
