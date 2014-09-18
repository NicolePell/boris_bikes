require 'van'
require 'bike'

describe Van do

	let(:bike){Bike.new}
	let(:van){Van.new}
	let(:station){DockingStation.new}

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
end


