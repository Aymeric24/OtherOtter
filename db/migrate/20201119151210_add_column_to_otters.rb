class AddColumnToOtters < ActiveRecord::Migration[6.0]
  def change
    add_column :otters, :address, :string
  end
end
