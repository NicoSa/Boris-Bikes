require 'docking_station'

describe Docking_Station do

	let(:station) { Docking_Station.new}

	
	it 'accepts bikes' do
		bike = double, :bike
		station.dock(bike)
		expect(station.has_bikes?).to eq 1
	end

	it 'has bikes' do
		expect(station).to have_bikes
	end

	it 'knows the amount of stored bikes' do
	end

	it '´s capacity is limited' do
	end

	it 'releases bikes' do
	end

	it 'knows broken bikes' do
	end
end