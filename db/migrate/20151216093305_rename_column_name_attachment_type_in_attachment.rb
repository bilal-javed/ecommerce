class RenameColumnNameAttachmentTypeInAttachment < ActiveRecord::Migration
  def up
  	rename_column :attachments, :attachment_type, :attachable_type
  end

  def down
  	rename_column :attachments, :attachable_type, :attachment_type
  end
end
