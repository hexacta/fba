require_relative '../../app/models/donor'
require_relative '../../app/models/donation'

describe Donor do
	it "create a donation" do
		donor = Donor.new "Coto"
		amount = 10
		due_date = Time.new
		donation = donor.donate "article", amount, due_date
		donation.should_not be_nil
	end
end
