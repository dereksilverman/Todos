# # Binary Secret Handshake
 
# > There are 10 types of people in the world: Those who understand binary, and those who don't.
 
# You and your fellow flatirons are of those in the "know" when it comes to binary decide to come up with a secret "handshake".
 
# ```
# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump
 
 
# 10000 = Reverse the order of the operations in the secret handshake.
# ```
 
# Write a program that will convert a binary number, represented as a string (i.e. "101010"), and convert it to the appropriate sequence of events for a secret handshake.
 
 
# ```
# handshake = SecretHandshake.new "1001"
# handshake.commands # => ["wink","jump"]
 
# handshake = SecretHandshake.new "11001"
# handshake.commands # => ["jump","wink"]
# ```
 
# The program should consider strings specifying an invalid binary as the value 0.

require 'debugger'

class SecretHandshake
  attr_reader :number

  def initialize(number)
    @number = number
  end

  
  def commands
      new_code = []
      if @number[-5] == "1" then
          new_code.reverse!
        end
      if @number[-4] == "1" then
          new_code << "jump" 
        end
      if @number[-3] == "1"
          new_code << "close your eyes"
        end
      if @number[-2] == "1" then
          new_code << "double blink"
        end
      if @number[-1] == "1" then
          new_code << "wink"
        end
      new_code
  end
end



