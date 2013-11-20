require './listmaker'

describe "#make_list" do
	it "should return an array of strings in a numbered list" do
		expect(make_list(["hero","demon","fire"])).to eq(["1. hero", "2. demon", "3. fire"])
	end

end