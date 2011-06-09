class Discussion < ActiveRecord::Base
  belongs_to :project

	has_many :comments
	has_attached_file :photo,
	:styles => {
      :thumb => "100x100",
      :small => "150x150" }
end
