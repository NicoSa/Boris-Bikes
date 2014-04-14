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

	def return_bike_to(station)
		station.accept_bike
	end 
end