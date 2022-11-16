class AddRefferenceToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :restaurant, index: true, null: false, foreign_key: true
  end
end
