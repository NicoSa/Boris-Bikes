class Docking_Station

	def initialize
		@bikes = []
		10.times(station.dock(bike))
	end

	def dock(bike)
		if @bikes.count < 20
			@bikes << bike
		else
			raise "It can only take 20!"
		end
	end

	def release
		@bikes.pop
	end

	def stock
		@bikes.count
	end

	def capacity
		@bikes.count < 20 ? "Not Full" : "Full" 
	end

end