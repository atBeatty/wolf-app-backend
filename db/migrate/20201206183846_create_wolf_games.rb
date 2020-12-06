class CreateWolfGames < ActiveRecord::Migration[6.0]
  def change
    create_table :wolf_games do |t|
      t.datetime :teeTime

      t.belongs_to :course, null: false, foreign_key: true
      # t.belongs_to :golfer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
