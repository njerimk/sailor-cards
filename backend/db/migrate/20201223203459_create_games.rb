class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :character_id
      t.float :time
      t.integer :bad_move
      t.integer :good_move

      t.timestamps
    end
  end
end
