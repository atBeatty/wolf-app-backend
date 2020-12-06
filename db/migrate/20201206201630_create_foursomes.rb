class CreateFoursomes < ActiveRecord::Migration[6.0]
  def change
    create_table :foursomes do |t|
      t.datetime :teeTime

      t.timestamps
    end
  end
end
