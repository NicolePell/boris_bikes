require 'docking_station'
require 'bike'

describe DockingStation do

	let(:bike) {Bike.new}
	let(:station) { DockingStation.new(:capacity =>20) } 

	it "should allow setting default capacity on initializing" do
		expect(station.capacity).to eq(20)
	end
    
    it "should release broken bikes to the van" do
    	working_bike, broken_bike = Bike.new, Bike.new
    	broken_bike.break!
    	station.dock(working_bike)
    	station.dock(broken_bike)
    	expect(station.release_broken).to eq broken_bike
    end

end