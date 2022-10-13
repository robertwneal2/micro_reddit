class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.references :user, foreign_key: true
      t.index [:url], unique: true
      t.timestamps
    end
  end
end