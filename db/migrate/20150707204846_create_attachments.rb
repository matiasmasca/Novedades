class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string  :profile_image_id
      t.string  :title
      t.string  :profile_image_filename
      t.integer :profile_image_size
      t.string  :profile_image_content_type

      t.references :notification, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
