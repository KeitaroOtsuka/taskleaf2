class AddCreatedAtToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :created_at, :datetime, null: true

    User.update_all(created_at: Time.current)

    change_column :users, :created_at, :datetime, null: false
  end

  def down
    remove_column :users, :created_at
  end
end
