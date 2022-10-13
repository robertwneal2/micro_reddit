class ChangeCommentsToAddNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :comments, :post_id, false
    change_column_null :comments, :user_id, false
  end
end
