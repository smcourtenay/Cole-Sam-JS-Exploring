def echo(string)
	string
end
def shout(string)
	echo(string).upcase
end
def repeat string, n=2
	fstring = string
	(n-1).times do |i|
		fstring = fstring + " " + string
	end
	fstring
end
def start_of_word sentence, letters=1
	sentence[0...letters]
end
def first_word sentence
	sentence.split(/ /)[0]
end
def titleize title
	if title.split(/ /) == title
		return title.capitalize
	else
		title = title.split(/ /).each {|word, i| word.capitalize! if (!%w(over and the).include? word)}.join(' ')
	end
	title[0] = title[0].upcase
	title
end