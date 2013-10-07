# method that returns a number of values of the fibonacci series


def fibonacci(n)
	a = []
  	n.times do |i|
    	if i == 0
      		a[i] = 0
    	elsif i==1
      		a[i] = 1
    	else
     		a[i] = a[i-1] + a[i-2]
    	end  
  	end

  	return a
end