class Lot
   	
   	def initialize number, description, article, duedate, weight
           @number = number
           @description = description
           @article = article
           @duedate = duedate
           @weight = weight
     end
 
    def is_expired
     	@duedate < Date.today
     end	
    
end