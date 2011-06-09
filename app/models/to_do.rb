class ToDo < ActiveRecord::Base
  belongs_to :project

	validates :title, :presence => true
	validates :body, :presence => true
end
