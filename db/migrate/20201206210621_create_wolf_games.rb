class CreateWolfGames < ActiveRecord::Migration[6.0]
  def change
    create_table :wolf_games do |t|
      t.decimal :stakes
      t.belongs_to :foursome, null: false, foreign_key: true
      t.belongs_to :course, null: false, foreign_key: true
    end
  end
end
