arr = [42, 89, 23, 1]

def search_array(arr, n)
  n = arr.index(n)
end 

search_array(arr, 1)


def fib(n)
  return n if n < 2 
  fib(n - 1) + fib(n - 2)
end 

(1..6).each {|n| puts fib(n)}

#fib_seq(6)
# => [0, 1, 1, 2, 3, 5]

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