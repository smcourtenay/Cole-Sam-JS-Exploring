def add_ay(*words)
	words.map {|word| word << "ay"}
end
def first_to_last(*words)
	words.map do |word|
		if word =~ /qu/
			word << word.slice!(0...(word =~ /qu/)+2)
		elsif word =~ /[aeiou]/
			word << word.slice!(0...(word =~ /[aeuio]/))
		end
	end
end
def translate (sentence)
	add_ay(*first_to_last(*sentence.split(/ /))).join(" ")
end
puts translate("oh damn sheniqua there goes her hair!")