class ToDo < ActiveRecord::Base
	has_many :to_dos
	validates :title, :presence => true
	validates :body, :presence => true
end
