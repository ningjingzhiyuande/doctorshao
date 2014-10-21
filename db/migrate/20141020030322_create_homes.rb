class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string  :title
      t.string  :flag
      t.text    :content
      t.string  :image
      t.string  :url
      t.integer :position
      t.timestamps
    end
    add_index :homes,:flag
  end
end
