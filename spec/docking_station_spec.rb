require 'docking_station'
require 'bike'

describe DockingStation do

	let(:bike) {Bike.new}
	let(:station) { DockingStation.new(:capacity =>20) } 
	let(:working_bike) { Bike.new }
	let(:van) { Van.new }

	it "should allow setting default capacity on initializing" do
		expect(station.capacity).to eq(20)
	end

	it "should accept fixed bikes from the van" do
		van.dock(working_bike)
		station.dock_fixed(van)
		expect(station.available_bikes.count).to eq(1)
	end
    
end