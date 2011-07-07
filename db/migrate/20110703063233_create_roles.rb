class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :email
      t.timestamps
    end
  end
 
  def self.down
    drop_table :roles
  end
end
