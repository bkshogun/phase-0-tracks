# search method, given array values, function call and expected output

arr = [42, 89, 23, 1]

def search_array(arr, n)
  n = arr.index(n)
end 

search_array(arr, 1)


# method storing numbers of fibonacci sequence in an array. Not quite what the 
# assignment asked for, but the closest I could get
def fib(n)
  a = 0
  b = 1
  n.times do
    temp = a 
    a = b 
    b = temp + b 
  end 
  return a 
end 

fib_array = []
15.times do |n|
  fib_array << fib(n)
end 
p fib_array

=begin 
I think what helps me graps the sorting method algorithms is just looking at examples of the code, 
line-by-line and seeing the actual effect of the code. 

I feel all of those things, except stupid. Its frustrating because I know I can grasp it, and I 
believe I will, but it's just not clicking quite yet. 

If I were to pseudocode a sorting method, I would think it would be most logical to compare
the given array with a new one. I'd begin the new array with 0, and then iterate through the given
array comparing with eqaul/greater than operations.
=end 

def insertion_sort(a)
	for i in 1...(a.length)
		j=i
		while j>0
			if a[j-1]>a[j]
				temp=a[j]
				a[j]=a[j-1]
				a[j-1]=temp
			else
				break
			end 
			j=j-1
		end
    end 
    return a 
end 