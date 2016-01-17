class Book
	CONJUNCTIONS_AND_ARTICLES = %w(and or the an in a of)
	def title=(title)
		@title = title.split(/ /).map {|word| !CONJUNCTIONS_AND_ARTICLES.include?(word) ? word.capitalize : word}.join(" ")
		@title[0] = title[0].upcase
	end
	def title
		@title
	end
end