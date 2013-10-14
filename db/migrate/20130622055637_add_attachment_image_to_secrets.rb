class AddAttachmentImageToSecrets < ActiveRecord::Migration
  def self.up
    change_table :secrets do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :secrets, :image
  end
end
