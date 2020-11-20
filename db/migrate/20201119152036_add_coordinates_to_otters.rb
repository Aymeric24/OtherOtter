class AddCoordinatesToOtters < ActiveRecord::Migration[6.0]
  def change
    add_column :otters, :latitude, :float
    add_column :otters, :longitude, :float
  end
end
