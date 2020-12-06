class CreateGolfers < ActiveRecord::Migration[6.0]
  def change
    create_table :golfers do |t|
      t.string :initials
    end
  end
end
