require 'garage'
require 'bike'
require 'van'

describe Garage do

	let(:garage) { Garage.new } 
	let(:van) { Van.new }
	let(:working_bike){ Bike.new }
	let(:broken_bike){ Bike.new.break! }

	it "should accept broken bikes from the van" do
		van.dock(working_bike)
		van.dock(broken_bike)
		garage.dock_broken(van)
		expect(garage.broken_bikes.count).to eq(1)
	end

	it "should release working bikes to the van" do
		garage.dock(working_bike)
		van.dock(working_bike)
		garage.release(working_bike)
		expect(garage.available_bikes.count).to eq (0)
	end

end