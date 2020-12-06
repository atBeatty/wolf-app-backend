class CreateHoles < ActiveRecord::Migration[6.0]
  def change
    create_table :holes do |t|
      t.integer :number
      t.integer :yards
      t.integer :par
      t.integer :score
    end
  end
end
