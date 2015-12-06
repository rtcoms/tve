class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :summary
      t.references :category
      t.references :user
      t.string :post_type
      t.integer :status
      t.date :event_date
      t.string :country

      t.timestamps null: false
    end
  end
end
