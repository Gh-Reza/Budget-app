class ChangeAuthorToUser < ActiveRecord::Migration[7.1]
  def change
    rename_column :purchases, :author_id, :user_id
  end
end
