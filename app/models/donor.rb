class Donor
   	
   	def initialize name
           @name = name
     end
 
    def donate lot
           return Donation.new lot
    end
    
end