class CreatePersonCards < ActiveRecord::Migration
  def change
    create_table :person_cards do |t|
      t.string :title
      t.integer :entry_id
      t.string :entry_type
      t.string :info
      t.string :image

      t.timestamps
    end
  end
end
