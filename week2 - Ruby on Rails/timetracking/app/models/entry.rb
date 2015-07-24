class Entry < ActiveRecord::Base
	belongs_to :project

	validates :hours, :minutes, numericality: true
	validates :date, :hours, :minutes, presence: true
	validates :project_id, presence: true
end
