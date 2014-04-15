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

	it 'won´t release broken bike to person' do
		#bike = double :bike, :broken?
		#expect(bike.broken?).not_to station.release
	end
end

=begin 
-ACCEPT A BIKE
-RELEASE A BIKE
-Capacity limit
-How many bikes?
-broken bike? release to van, notto release to person
=end
