class CreateClassrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.string :location
      t.string :school
      t.string :description
      t.timestamps
    end
  end
end
