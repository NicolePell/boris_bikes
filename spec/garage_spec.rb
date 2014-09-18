require 'garage'
require 'bike'
require 'van'

describe Garage do

	let(:bike) {Bike.new}
	let(:garage) { Garage.new } 
	let(:van) { Van.new }

	it "should accept broken bikes from the van" do
		working_bike, broken_bike, broken_bike2 = Bike.new, Bike.new, Bike.new
		broken_bike.break!
		broken_bike2.break!
		van.dock(working_bike)
		van.dock(broken_bike)
		van.dock(broken_bike2)
		garage.dock_broken(van)
		expect(garage.broken_bikes.count).to eq(2)
	end

	it "should fix docked bikes" do
		broken_bike = Bike.new
		broken_bike.break!
		van.dock(broken_bike)
		garage.dock_broken(van)
		garage.fix_bike
		expect(garage.available_bikes.count).to eq(1)
	end
end