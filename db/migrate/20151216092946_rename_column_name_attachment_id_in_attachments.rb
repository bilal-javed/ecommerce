class RenameColumnNameAttachmentIdInAttachments < ActiveRecord::Migration
  def up
  	rename_column :attachments, :attachment_id, :attachable_id
  end

  def down
  	rename_column :attachments, :attachable_id, :attachment_id
  end
end
