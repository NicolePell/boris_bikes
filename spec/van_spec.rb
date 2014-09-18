require 'van'
require 'bike'

describe Van do

	let(:bike){Bike.new}
	let(:van){Van.new}
	let(:station){DockingStation.new}
	let(:garage){Garage.new}

	it "should dock broken bikes from station" do
	working_bike, broken_bike, broken_bike2 = Bike.new, Bike.new, Bike.new
	broken_bike.break!
	broken_bike2.break!
	station.dock(working_bike)
	station.dock(broken_bike)
	station.dock(broken_bike2)
	van.dock_broken(station)
	expect(van.broken_bikes.count).to eq(2)
	end

	it "should release broken bikes to the garage" do
    	working_bike, broken_bike = Bike.new, Bike.new
    	broken_bike.break!
    	van.dock(working_bike)
    	van.dock(broken_bike)
    	expect(van.release_broken).to eq broken_bike
    end


end


