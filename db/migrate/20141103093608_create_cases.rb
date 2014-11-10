class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :before_image
      t.string :after_image
      t.string :title
      t.string :info
      t.integer :entry_id
      t.string :entry_type
      t.boolean :is_recommend

      t.timestamps
    end
  end
end
