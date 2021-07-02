class RemovePassFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_columns :users, :password, :password_confirmation
  end
end
