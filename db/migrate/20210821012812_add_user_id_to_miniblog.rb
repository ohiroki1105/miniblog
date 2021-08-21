class AddUserIdToMiniblog < ActiveRecord::Migration[6.0]
  def change
    add_column :miniblogs, :user_id, :integer
  end
end
