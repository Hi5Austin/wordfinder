require 'wordnik'

# READ THE README, IT WILL HELP YOU

%w(rubygems wordnik).each {|lib| require lib}

Wordnik.configure do |config|
    config.api_key = 'YOUR WORDNIK API KEY'
end

myWords = gets.chomp.split(",")

#myWords = ["apple","fat","cat","truncate"]

myWords.each do |word|
	puts "";
	puts word + ":"
	api = Wordnik.word.get_definitions(word)
	api.each do |set|
		defi = set["text"]
		puts defi
	end
end


