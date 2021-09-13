class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :content
      t.datetime :time
      t.belongs_to :user, foreign_key: :true
      t.belongs_to :game, foreign_key: :true
      t.timestamps
    end
  end
end
