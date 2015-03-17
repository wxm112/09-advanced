# ruby lr.rb simpsons.txt


# [8] Using the pattern test program, make a pattern to match the string match. 
# Try the program with the input string beforematchafter. 
# Does the output show the three parts of the match in the right order?


# ARGF.each do |line|
#   if (match = line =~ /match/)
#     puts "Before match: #{$` } "
#     puts "Match: #{ $& }"
#     puts "Atfer match: #{ $' } "
#   end
# end


# [7] Using the pattern test program, make a pattern that matches 
# if any word (in the \w sense of word) ends with the letter a. 
# Does it match wilma but not barney? Does it match Mrs. Wilma Flintstone? 
# What about wilma&fred? Try it on the sample text file from the Exercises in Chapter 7 
# (and add these test strings if they weren’t already in there).


# ARGF.each do |line|
#   if(match = line =~ /\w+a\b/)
#     puts "Before match: #{$` } "
#     puts "Match: #{ $& }"
#     puts "Atfer match: #{ $' } "
#   end
# end


# [5] Modify the program from the previous exercise so that the word ending with 
# the letter a is captured into $1. Update the code to display that variable’s contents 
# in single quotes, something like $1 contains 'Wilma'.


# ARGF.each do |line|
#   if(match = line =~ /(\w+a)\b/)
#     puts "$1 contains '#{ $1 }'"
#   end
# end


# [5] Modify the program from the previous exercise to use named captures instead of 
# relying on $1. Update the code to display that label name, something like 'word' 
# contains 'Wilma'.


# ARGF.each do |line|
#   if(match = line.match /(?<word>\w+a)\b/)
#     puts "word contains '#{ match['word'] }'"
#   end
# end


# [5] Extra credit exercise: modify the program from the previous exercise so that 
# immediately following the word ending in a it will also capture up-to-five characters
# (if there are that many characters, of course) in a separate capture variable. 
# Update the code to display both capture variables. For example, 
# if the input string says I saw Wilma yesterday, the up-to-five characters are “yest”. 
# If the input is I, Wilma!, the extra capture should have just one character. 
# Does your pattern still match just plain wilma?


# ARGF.each do |line|
#   if(match = line.match /(?<word>\w+a)\b(?<after>.{,5})/) #Greediness
#     puts "after contains '#{ match['after']}'"
#     puts "word contains '#{ match['word'] }'"
#   end
# end


# [5] Write a new program (not the test program!) that prints out any input line 
# ending with whitespace (other than just a newline). Put a marker character at the
# end of the output line so as to make the whitespace visible.

ARGF.each do |line|
  if(match = line.match /[ \t]+$/) 
    puts line.chomp + 'WS'
  else
    puts line
  end
end
