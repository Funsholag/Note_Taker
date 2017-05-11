class AddForeignKey < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :user_id, :integer
    add_column :users, :profile_id, :integer
  end
end
