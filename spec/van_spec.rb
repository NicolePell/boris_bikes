require 'van'
require 'bike'

describe Van do

	let(:bike){Bike.new}
	let(:van){Van.new}

	it "should accept broken bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		van.dock(broken_bike)
		expect(van.broken_bike).to eq ([broken_bike])
	end

end