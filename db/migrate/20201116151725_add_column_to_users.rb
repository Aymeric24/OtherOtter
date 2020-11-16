class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_owner?, :boolean
    add_column :users, :address, :string
    add_column :users, :rating, :integer
  end
end
