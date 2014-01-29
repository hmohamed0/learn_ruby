def echo(word)
    word
end

def shout(word)
word.upcase
end

 def repeat(word, num = 2)
 ([word] * num).join(" ")
end

def start_of_word(str, num)
    str[0, num]
end

def first_word(str)
    str.split[0]
end

def titleize (words)
	exception = ["and", "over", "or", "the"]
	(words.split.each_with_index do |word, index|
	word.capitalize! unless exception.include?(word) and index != 0
	end).join(' ')


end