class AddAttachmentPhotoToPhotographs < ActiveRecord::Migration
  def self.up
    change_table :photographs do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :photographs, :photo
  end
end
