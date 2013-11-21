require './deli_counter'

describe Deli do

	describe "take a number" do
		it "should take a customer name, append their number, and add to line" do
        	deli = Deli.new
        	expect(deli.take_a_number("Peter")).to eq(["Derek", "Nikki", "Sabrina", "Henry", "Tanya", "Peter"])
		end
	end


describe 'now_serving' do
 		it 'should return the name of the customer being served and remove their name from the line' do
     		deli = Deli.new
     		expect(deli.now_serving).to eq("Derek")
    	end
    end
end
