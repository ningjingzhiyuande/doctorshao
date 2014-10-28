class CreateArticles < ActiveRecord::Migration
   def change
     create_table :articles do |t|
      t.string :title
      t.integer :view_count
      t.string :image
      t.integer :status_id
      t.string  :kind
      t.boolean :is_recommend
      t.timestamps
    end
    add_index :articles,:kind
    #index :articles,:title
    add_index :articles,:status_id

    end

end
