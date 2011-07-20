class ToDo < ActiveRecord::Base
  belongs_to :project

	validates :title, :presence => true
	validates :body, :presence => true
	
	def to_json(options = {})
    super(options.merge(:only => [ :id, :title, :due, :priority, :progress, :project_id ]))
  end
end
