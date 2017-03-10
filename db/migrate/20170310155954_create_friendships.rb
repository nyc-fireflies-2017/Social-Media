class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
        t.references :user, null: false
        t.integer :friend, null: false
        t.boolean :accepted, default: false, null: false

      t.timestamps
    end
  end
end
