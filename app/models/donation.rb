class Donation
   	
   	def initialize article, amount, due_date
           @article = article
           @amount = amount
           @due_date = due_date
     end

     def is_expired
     	@due_date > Date.today
     end	
    
end