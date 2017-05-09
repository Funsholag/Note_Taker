class Addcolumn < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :item, :string
  end
end
