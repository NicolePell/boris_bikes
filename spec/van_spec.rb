require 'van'
require 'bike'

describe Van do

	let(:bike){Bike.new}
	let(:van){Van.new}

end

# it "should only release from available bikes" do
# 		working_bike, broken_bike = Bike.new, Bike.new
# 		broken_bike.break!
# 		holder.dock(working_bike)
# 		holder.dock(broken_bike)
# 		holder.release(working_bike)
# 		holder.release(broken_bike)
# 		expect(holder.bike_count).to eq(1)
# 	end