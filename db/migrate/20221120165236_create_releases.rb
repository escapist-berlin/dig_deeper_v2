class CreateReleases < ActiveRecord::Migration[7.0]
  def change
    create_table :releases do |t|
      t.string :artist
      t.string :title
      t.string :label
      t.string :catalog_number
      t.string :format
      t.date :released
      t.string :styles
      t.string :url
      t.string :cover_url
      t.string :source
      t.string :tag
      t.string :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
