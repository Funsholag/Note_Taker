class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :fname
      t.string :lname
      t.string :school
      t.string :classroom
      t.string :study

      t.timestamps
    end
  end
end
