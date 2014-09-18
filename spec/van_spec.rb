require 'van'
require 'bike'

describe Van do

	let(:van){Van.new}
	let(:station){DockingStation.new}
	let(:broken_bike){Bike.new.break!}
	let(:working_bike){Bike.new}
	let(:garage){Garage.new}

	it "should dock broken bikes from station" do
		station.dock(working_bike)
		station.dock(broken_bike)
		van.dock_broken(station)
		expect(van.broken_bikes.count).to eq(1)
	end

	it "should dock fixed bikes from garage" do
		garage.dock(working_bike)
		van.dock_fixed(garage)
		expect(van.available_bikes.count).to eq(1)
	end

end


