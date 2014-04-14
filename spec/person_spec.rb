require 'person'

describe Person do

	let(:person) {Person.new}

	it 'doesn´t have a bike' do
		expect(person).not_to have_bike
	end

	it 'can rent a bike from a station' do
		station = double :station
		expect(station).to receive(:release_bike)
		person.rent_from(station)
	end

	it 'receives bike when renting from station' do
		station = double :station, release_bike: :bike
		person.rent_from(station)
		expect(person).to have_bike
	end

	it 'crashes' do
		bike = double :bike
		expect(bike).to receive(:break!)

		person = Person.new
		person.crash!(bike)
	end

end