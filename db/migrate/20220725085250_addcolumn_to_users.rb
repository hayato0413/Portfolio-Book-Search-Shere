class AddcolumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false, default: '', limit: 30
    add_column :users, :profile, :string, limit: 120
    add_column :users, :evaluation, :int, limit: 5
  end
end
