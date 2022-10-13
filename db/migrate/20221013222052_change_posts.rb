class ChangePosts < ActiveRecord::Migration[7.0]
  def change
    change_column_null :posts, :title, false
    change_column_null :posts, :url, false
    change_column_null :posts, :user_id, false
  end
end
