require 'garage'
require 'bike'

describe Garage do

	let(:bike) {Bike.new}
	let(:garage) { Garage.new } 

	it "should fix broken bikes" do
		bike.break!
		bike.fix!
		garage.dock(bike)
		expect(bike).to_not be_broken
	end

end