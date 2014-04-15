class Person

	def initialize(bike=nil)
		@bike = bike
	end

	def has_bike?
		@bike != nil
	end

	def rent_from(station)
		@bike = station.release
	end

	def crash!
		@bike.break!
	end

	def return_bike_to(station)
		station.dock(@bike)		
		@bike = nil
	end 
end