require 'person'

describe Person do
 
	let(:person) { Person.new }
	let(:bike) { double :bike }
	let(:person_with_bike) { Person.new(bike) }

	it 'doesn´t have a bike' do
		expect(person).not_to have_bike
	end

	it 'can rent a bike from a station' do
		station = double :station
		expect(station).to receive(:release)
		person.rent_from(station)
	end

	it 'receives bike when renting from station' do
		station = double :station, release: :bike
		person.rent_from(station)
		expect(person).to have_bike
	end

	it 'crashes' do
		expect(bike).to receive(:break!)
		person_with_bike.crash!
	end

	it 'can return bike to station' do
		station = double :station
		expect(station).to receive(:dock)
		person.return_bike_to(station)
	end

	it 'no bike after return bike to station' do
		station = double :station, dock: :bike
		person.return_bike_to(station)
		expect(person).not_to have_bike
	end


end