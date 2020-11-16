class AddOwnershipToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_owner?, :boolean, default: false
  end
end
