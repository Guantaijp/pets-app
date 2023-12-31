class CreateAdReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :ad_reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ad, null: false, foreign_key: true
      t.integer :rating
      t.string :comment

      t.timestamps
    end
  end
end
