require_relative '../../app/models/donation'
require_relative '../../app/models/lot'

describe Donation do
	it "is valid when its lot is not expired" do
		lot_mock = mock(Lot)
		lot_mock.stub!(:is_expired).and_return(false)
		Donation.new lot_mock
	end

	it "is invalid when its lot is expired" do
		lot_mock = mock(Lot)
		lot_mock.stub!(:is_expired).and_return(true)
		expect{Donation.new lot_mock}.to raise_error(RuntimeError)
	end

end
