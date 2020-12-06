class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.float :slope
      t.float :rating
      t.integer :par

    end
  end
end
