require_relative '../../app/models/donation'
require 'date'


describe Donation do
	it "When the duedate is after than now, the donation expired" do
		amount = 10
		due_date = Date.today + 1
		donation = Donation.new "article", amount, due_date
		donation.is_expired.should be_true
	end

	it "When the duedate is before than now, the donation  not expired" do
		amount = 10
		due_date = Date.today - 1
		donation = Donation.new "article", amount, due_date
		donation.is_expired.should be_false
	end

end
