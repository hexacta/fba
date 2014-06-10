class Donor
   	
   	def initialize name
           @name = name
     end
 
    def donate article, amount, duedate	       
           return Donation.new article, amount, duedate 
    end
    
end