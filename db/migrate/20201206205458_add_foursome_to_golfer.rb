class AddFoursomeToGolfer < ActiveRecord::Migration[6.0]
  def change
    add_reference :golfers, :foursome, null: true, foreign_key: true
  end
end
