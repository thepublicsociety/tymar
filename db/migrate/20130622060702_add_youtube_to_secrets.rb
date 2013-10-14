class AddYoutubeToSecrets < ActiveRecord::Migration
  def change
    add_column :secrets, :youtube, :string
  end
end
