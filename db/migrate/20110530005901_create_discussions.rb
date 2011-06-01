class CreateDiscussions < ActiveRecord::Migration
  def self.up
    create_table :discussions do |t|
      t.string :title
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :discussions
  end
end
