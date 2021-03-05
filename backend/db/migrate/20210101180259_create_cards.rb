class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :frontImg
      t.string :backImg
      t.boolean :flipped
      t.string :pair_name
      t.integer :game_id

      t.timestamps
    end
  end
end
