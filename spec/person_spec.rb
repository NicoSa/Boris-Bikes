require 'person'

describe Person do

	let(:person) {Person.new}

	it 'doesn´t have a bike' do
		expect(person).not_to have_bike
	end

end