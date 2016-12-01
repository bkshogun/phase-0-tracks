arr = [42, 89, 23, 1]

def search_array(arr, n)
  n = arr.index(n)
end 

search_array(arr, 1)


def fib_seq(n)
   yield * n 
end 

fib_math do 
	n = (n - 1) + (n - 2)
end 

fib_seq(6)
# => [0, 1, 1, 2, 3, 5]