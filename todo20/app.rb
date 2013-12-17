# instructions: implement Array.uniq
 
 UNIQ = []

class Array
 
  def uniq
    self.each do |x|
    	UNIQ << x unless UNIQ.include?(x) 
    end
  end
 
end

test = [2,4,5,5,6,3,3,99999, 99999, 38,5]
test.uniq
puts UNIQ

