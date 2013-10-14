class ChangePubishToPublish < ActiveRecord::Migration
  def up
    rename_column :secrets, :pubish_date, :publish_date
  end

  def down
  end
end
