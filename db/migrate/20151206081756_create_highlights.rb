class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.string :title
      t.datetime :date
      t.string :caption
      t.string :image

      t.timestamps
    end
  end
end
