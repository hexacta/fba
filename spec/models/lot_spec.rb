require_relative '../../app/models/lot'
require 'date'

describe Lot do	
	it "When the duedate is before than now, the lot not expired" do
		number = 2
		description = "milk"
		duedate = Date.today + 1
		weight = "anyWeight in kg"
		lot = Lot.new number, description, "article", duedate, weight
		lot.is_expired.should be_false
	end

	it "When the duedate is after than now, the lot expired" do
		number = 2
		description = "milk"
		duedate = Date.today - 1
		weight = "anyWeight in kg"
		lot = Lot.new number, description, "article", duedate, weight
		lot.is_expired.should be_true
	end	
end
