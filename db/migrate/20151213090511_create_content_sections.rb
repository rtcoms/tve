class CreateContentSections < ActiveRecord::Migration
  def change
    create_table :content_sections do |t|
      t.integer :content_type
      t.string :title
      t.text :description
      t.datetime :event_at
      t.string :url_to_image
      t.string :embed_url
      t.text :embed_content
      t.string :credits_text
      t.string :credits_url
      t.string :tags
      t.references :news_paper
      t.timestamps null: false
    end
  end
end
