require 'debugger'

def fibo_finder(n)  
  array = [0,1]
    n.times{|i| array[i + 2] = array[i] + array[i + 1]}
  array[n]
end

puts fibo_finder(3)

