class AddPhotoToDiscussions < ActiveRecord::Migration
  def self.up
    add_column :discussions, :photo_file_name, :string
    add_column :discussions, :photo_content_type, :string
    add_column :discussions, :photo_file_size, :integer
  end

  def self.down
    remove_column :discussions, :photo_file_size
    remove_column :discussions, :photo_content_type
    remove_column :discussions, :photo_file_name
  end
end
