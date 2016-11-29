arr = [42, 89, 23, 1]

def search_array(arr, y)
   arr.each do |num|
   	if num == y
   	   return arr.index?
   	else return nil 
   	end 
    end 
end

p search_array(arr, 89)


# 

=begin
fib_seq = []

def fibb(n)
if n >= 1
   n = (n - 1) + (n - 2)
   fib_seq << n 
end 
end 

 p fib_seq[6]
=end 
