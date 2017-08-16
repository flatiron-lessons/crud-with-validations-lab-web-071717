class Song < ActiveRecord::Base
	validates :title, presence: :true
	validates :title, uniqueness: true
	validates :release_year, presence: :true, if: :released?

	validate :release_date_cannot_be_in_the_future


	def released?
		self.released
	end

	def release_date_cannot_be_in_the_future
		if self.release_year
			if self.release_year > Date.today.year
				errors.add(:release_year, "release year cannot be in the future")
			end
		end
	end

end
