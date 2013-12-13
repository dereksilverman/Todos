require 'debugger'

def fibo_finder(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    array = [0,1]
    (n-1).times do
      array << array[-1] + array[-2]
    end
  end
  return array.last
end

puts fibo_finder(90)

