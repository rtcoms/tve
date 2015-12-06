class CreateNewsPapers < ActiveRecord::Migration
  def change
    create_table :news_papers do |t|
      t.string :name
      t.string :url
      t.string :logo
      t.string :country

      t.timestamps null: false
    end
  end
end
