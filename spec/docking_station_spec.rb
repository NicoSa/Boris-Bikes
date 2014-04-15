require 'docking_station'

describe Docking_Station do

	let(:station) { Docking_Station.new}

	
	it 'accepts bikes' do
		bike = double, :bike
		station.dock(bike)
		expect(station.stock).to eq 1
	end

	it 'releases bikes' do
		station.release
		expect(station.stock).to eq 0
	end

	it 'returns Full for 20 bikes' do
		bike = double, :bike
		20.times{station.dock(bike)}
		expect(station.capacity).to eq "Full"
	end

	it 'returns Not Full for less than 20 bikes' do
		bike = double, :bike
		18.times{station.dock(bike)}
		expect(station.capacity).to eq "Not Full"
	end

	it 'knows its full capacity is 20' do
		bike = double, :bike
		expect{21.times{station.dock(bike)}}.to raise_error "It can only take 20!"
	end

	it 'knows the amount of stored bikes' do
		# bike = double, :bike
		# station.dock(bike)
		# expect(station.stock).to eq 
	end

	

	

	it 'knows broken bikes' do
	end
end