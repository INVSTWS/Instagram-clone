class RemoveUserNameFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :user_name, :string
  end
end
