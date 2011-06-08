class ToDo < ActiveRecord::Base
  belongs_to :project
	has_many :to_dos
	validates :title, :presence => true
	validates :body, :presence => true
end
