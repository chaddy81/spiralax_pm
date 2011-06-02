class Comment < ActiveRecord::Base
	belongs_to :discussion
end
