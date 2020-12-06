class CreateFoursomes < ActiveRecord::Migration[6.0]
  def change
    create_table :foursomes do |t|
      t.datetime :teeTime
    end
  end
end
