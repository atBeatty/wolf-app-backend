class AddWolfGameToFoursome < ActiveRecord::Migration[6.0]
  def change
    add_reference :foursomes, :wolf_game, null: false, foreign_key: true
  end
end
