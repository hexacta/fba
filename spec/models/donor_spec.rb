require_relative '../../app/models/donor'
require_relative '../../app/models/donation'
require_relative '../../app/models/lot'

describe Donor do
	it "create a donation" do
		donor = Donor.new "Coto"
		lot_mock = mock(Lot)
		lot_mock.stub!(:is_expired).and_return(false)
		donation = donor.donate lot_mock 
		donation.should_not be_nil
	end
end
