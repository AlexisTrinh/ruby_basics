def caesar_cipher(text,shift)
	lower_alph = fill_alph("a")
	upper_alph = fill_alph("A")

	code = text.chars.map do |char| 
		if lower_alph.include?(char)
			lower_alph[ (lower_alph.index(char)+shift) % 26 ]
		elsif upper_alph.include?(char)
			upper_alph[ (upper_alph.index(char)+shift) % 26 ]
		else
			char
		end
	end.join("")

end

def fill_alph(seed)
	array = [seed]
	25.times do |i|
		array[i+1] = array[i].next
	end
	array
end

puts caesar_cipher("abc",27)
puts caesar_cipher("Abc",27)
puts caesar_cipher("xyz",5)
puts caesar_cipher("abc!",2)