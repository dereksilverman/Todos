def array_init(size=5)
  if block_given?
    ary = Array.new(size) { |i| yield i }
  else
    ary = Array.new(size) { |i| (100 * i).to_s }
  end
end


#hero = array_init { |i| i=10}
#puts hero.inspect

#is this an object? 