class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.text :answer
      t.integer :entry_id
      t.string :entry_type
      t.string :image

      t.timestamps
    end
  end
end
