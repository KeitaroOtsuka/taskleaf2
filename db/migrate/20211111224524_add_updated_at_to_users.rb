class AddUpdatedAtToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :updated_at, :datetime, null: true

    User.update_all(updated_at: Time.current)

    change_column :users, :updated_at, :datetime, null: false
  end

  def down
    remove_column :users, :updated_at
  end
end
