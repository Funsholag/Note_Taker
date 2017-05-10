class CreateTodolists < ActiveRecord::Migration[5.0]
  def change
    add_column :item, :string
  end
end
