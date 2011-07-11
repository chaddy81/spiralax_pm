class CreateUserAndProjectTable < ActiveRecord::Migration
  def self.up
    create_table :users_projects, :id => false do |t|
      t.references :user, :project
    end
  end

  def self.down
    drop_table :users_projects
  end
end
