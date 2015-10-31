class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :author
      t.datetime :date
      t.text :story
      t.string :caption
      t.string :image
      t.boolean :published
      t.boolean :main_story

      t.timestamps
    end
  end
end
