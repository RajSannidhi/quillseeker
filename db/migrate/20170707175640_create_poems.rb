class CreatePoems < ActiveRecord::Migration[5.0]
  def change
    create_table :poems do |t|
      t.string :title
      t.text :poemtext
      t.string :poemdate
      t.integer :poet_id
      t.timestamps
    end

    add_index :poems, :poet_id
  end
end
