class CreateOtters < ActiveRecord::Migration[6.0]
  def change
    create_table :otters do |t|
      t.string :name
      t.integer :age
      t.string :personality
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
