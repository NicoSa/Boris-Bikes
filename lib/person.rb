class Person
	def initialize
		@bike
	end
	
	def has_bike?
		!@bike.nil?
	end

	def rent_from(station)
		@bike = station.release_bike
	end

	def crash!(bike)
	@bike = bike.break!
	end
end