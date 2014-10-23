class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :item_id
      t.string :item_type
      t.text :body
      t.timestamps
    end
    add_index :contents,[:item_id,:item_type]
  end
end
