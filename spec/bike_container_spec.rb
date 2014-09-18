require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

	let(:bike) {Bike.new}
	let(:holder) { ContainerHolder.new } 

	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end
	
	it "should release a bike" do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq(0)
	end

	it "should only release from available bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(working_bike)
		holder.dock(broken_bike)
		holder.release(working_bike)
		holder.release(broken_bike)
		expect(holder.bike_count).to eq(1)
	end

	it "should know when it's empty" do
		expect(holder.bike_count).to eq(0)
	end

	it "should not release bike if it's empty" do
		expect { holder.release(bike) }.to raise_error(RuntimeError)
	end

	it "should know when it's full" do
		expect(holder).not_to be_full
		10.times { holder.dock(Bike.new) }
		expect(holder).to be_full
	end

	it "should not accept the bike if it's full" do
		10.times { holder.dock(Bike.new) }
		expect { holder.dock(bike) }.to raise_error(RuntimeError)
	end

	it "should return a list of available bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(working_bike)
		holder.dock(broken_bike)
		expect(holder.available_bikes).to eq ([working_bike])
	end 

	it "should return a list of broken bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(working_bike)
		holder.dock(broken_bike)
		expect(holder.broken_bikes).to eq ([broken_bike])
	end

	it "should release broken bikes to the van" do
    	working_bike, broken_bike = Bike.new, Bike.new
    	broken_bike.break!
    	holder.dock(working_bike)
    	holder.dock(broken_bike)
    	expect(holder.release_broken).to eq broken_bike
    end

end