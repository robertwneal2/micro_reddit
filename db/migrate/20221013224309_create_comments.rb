class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.index [:user_id, :post_id]
      t.timestamps
    end
  end
end
