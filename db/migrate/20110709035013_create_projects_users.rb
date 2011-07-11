class CreateProjectsUsers < ActiveRecord::Migration
  def self.up
    create_table :projects_users do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :projects_users
  end
end
