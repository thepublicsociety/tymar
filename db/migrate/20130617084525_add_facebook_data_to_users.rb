class AddFacebookDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ftoken, :string
    add_column :users, :fuid, :string
    add_column :users, :flink, :string
    add_column :users, :fexpires_at, :string
  end
end
