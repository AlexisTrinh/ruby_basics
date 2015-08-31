
def substrings(sentence,dictionary)
	matches = Hash.new(0)
	sentence.downcase!
	dictionary.each do |word|
		r = Regexp.new word
		num_matches = sentence.scan(r).size
		if num_matches > 0
			matches[word] = num_matches
		end
	end
	matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
