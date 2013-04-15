class AddAssetFileToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :documents, :asset
  end
end
