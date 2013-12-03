tweet1 = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
tweet2 = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
tweet3 = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"

tweet_array = []
tweet_array << tweet1
tweet_array << tweet2
tweet_array << tweet3
shortened_array = []

tweet_array.each do |tweet|
	if tweet.size > 140
		word_array = tweet.split(" ")
		word_array.each_index do |i|
			word = word_array[i].downcase
			word_array





tweet_array.each do |tweet|
	if tweet.include? "to"
		tweet.gsub!('to', '2')
	end         

	if tweet.include? "too"
		tweet.gsub!('too', '2')
	end

	if tweet.include? "two"
		tweet.gsub!('two', '2')
	end

	if tweet.include? "for"
		tweet.gsub!('for', '4')
	end

	if tweet.include? "four"
		tweet.gsub!('four', '4')
	end

	if tweet.include? "be"
		tweet.gsub!('be', 'b')
	end

	if tweet.include? "you"
		tweet.gsub!('you', 'u')
	end

	if tweet.include? "at"
		tweet.gsub!('at', '@')
	end

	if tweet.include? "and"
		tweet.gsub!('and', '&')
	end
end

puts tweet_array

