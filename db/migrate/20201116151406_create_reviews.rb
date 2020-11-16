class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :otter_rating
      t.text :otter_review
      t.integer :user_rating
      t.text :user_review
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
