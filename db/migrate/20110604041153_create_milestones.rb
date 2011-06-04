class CreateMilestones < ActiveRecord::Migration
  def self.up
    create_table :milestones do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.string :assigned
      t.date :due

      t.timestamps
    end
  end

  def self.down
    drop_table :milestones
  end
end
