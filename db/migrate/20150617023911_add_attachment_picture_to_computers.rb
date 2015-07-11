class AddAttachmentPictureToComputers < ActiveRecord::Migration
  def self.up
    change_table :computers do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :computers, :picture
  end
end
