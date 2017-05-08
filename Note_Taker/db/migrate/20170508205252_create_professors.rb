class CreateProfessors < ActiveRecord::Migration[5.0]
  def change
    create_table :professors do |t|
      t.string :fname
      t.string :lname
      t.string :classroom
      t.string :email
      t.integer :phone
      

      t.timestamps
    end
  end
end
