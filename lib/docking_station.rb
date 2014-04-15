=begin 
-ACCEPT A BIKE
-RELEASE A BIKE
-Capacity limit
-How many bikes?
-broken bike? release to van, notto release to person
=end

class Docking_Station

	def initialize
		@bikes = []
	end

	def dock(bike)
		@bikes << bike
	end

	def release(bike)
		@bikes.delete(bike)
	end

	def stock
		@bikes.count
	end

	def capacity
		@bikes.count < 20 ? "Not Full" : "Full" 
	end

end