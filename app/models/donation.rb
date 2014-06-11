class Donation
   	
   	def initialize lot
   		if lot.is_expired
   			raise "cannot create a donation with a expired lot"
   		else	
        	@lot = lot
        end
    end

    
end