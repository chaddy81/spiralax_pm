class AddProjectIdToInvite < ActiveRecord::Migration
  def self.up
    add_column :users, :invited_project_id, :integer
  end

  def self.down
    remove_column :users, :invited_project_id
  end
end
