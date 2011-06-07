class AddProductIdToAllTables < ActiveRecord::Migration
  
  AFFECTED_TABLES = [:discussions, :to_dos, :uploads, :milestones]
  
  def self.up
    AFFECTED_TABLES.each do |t|
      add_column(t, :project_id, :int)
    end
  end

  def self.down
    AFFECTED_TABLES.each do |t|
      remove_column(t, :project_id, :int)
    end
  end
end
