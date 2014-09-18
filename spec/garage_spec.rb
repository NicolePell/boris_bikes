require 'garage'
require 'bike'
require 'van'

describe Garage do

	let(:bike) {Bike.new}
	let(:garage) { Garage.new } 
	let(:van) { Van.new }

	it "should fix broken bikes" do
		bike.break!
		bike.fix!
		garage.dock(bike)
		expect(bike).to_not be_broken
	end

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

end