require 'docking_station'

describe Docking_Station do

	let(:station) { Docking_Station.new}

	
	it 'accepts bikes' do
		bike = double, :bike
		station.dock(bike)
		expect(station.stock).to eq 1
	end

	it 'releases bikes' do
		bike = double, :bike
		station.release(bike)
		expect(station.stock).to eq 0
	end

	it 'knows the amount of stored bikes' do
		# bike = double, :bike
		# station.dock(bike)
		# expect(station.stock).to eq 
	end

	it '´s capacity is limited' do
	end

	

	it 'knows broken bikes' do
	end
end