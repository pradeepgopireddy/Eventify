class Event < ApplicationRecord
	validate :check_date
	validates_presence_of :name
	def check_date
		if self.date_time < DateTime.now.utc
			self.errors.add(:base, "select date & time  greaterthan #{DateTime.now.utc}" )
		end
	end
end
