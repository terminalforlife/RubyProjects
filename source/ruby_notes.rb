#!/usr/bin/env ruby

#------------------------------------------------------------------------------
# Project Name      - RubyProjects/source/ruby_notes.rb
# Started On        - Sat 19 Jun 05:51:26 BST 2021
# Last Change       - Sat 19 Jun 23:38:14 BST 2021
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------

# Safety precaution. This file isn't meant to be executed. Note, however, that
# Ruby let's you use `exit()`, like in PERL, for exiting with a given exit
# status. If this is left empty, it defaults to `0` (success).
#
# Also note that comments in Ruby, like in Shell, Python, and PERL, use the
# hashtag or pound sign ('#').
exit()

# Print a string. The `print()` function (AKA: 'method') does not include a
# new-line character.
print("This is a string.")

# Print a string. The `puts()` function does include a new-line character.
#
# The use of escape sequences works as you'd expect in other languages, and the
# quoting rules appear to be the same as in PERL, sharing similarities with
# Shell.
puts(".")

# If you use `#{NAME}` you can place the contents of the variable within
# double-quotes, thankfully! Some people online will demonstrate this working
# even without '#', but this does not work for me, so is probably for newer or
# older versions of Ruby. This actually works just like `@{[...]}` in PERL, in
# that you can put pretty much anything there.
#
# Note the use of a concatenation symbol, which I believe works like you'd
# expect in JS. In PERL, this is `.`, but that doesn't work here. This operator
# becomes problematic due to the ambiguity when an integer or float is used; -
# in this case, the `to_s()` function can be used, to temperarily convert it to
# a string.
#
# There is also `to_f()` and likely other predictable 'to' functions.
#
# Ruby has the following data types:
#
#   * Array
#   * Boolean
#   * Float
#   * Hash
#   * Integer
#   * Null
#   * String
#
# Variables are not read-only/constant by default.
#
# Unlike standard shells, negative numbers (integer and float) can be used.
#
# Unfortunately, all-lowercase and words seprated by an underscore is the
# standard used in Ruby; I hate this, and think it looks fugly and weird, but
# it's the standard. Ordinarily, I wouldn't care, but it's actually really
# important in Ruby, because there are many reserved words, such as `Array`.
#
# I have no idea how scoping works, yet.
variable = 'Value'
puts('variable is: ' + variable)

# Ruby works in a similar OO way that Python and JS does. In this case, the
# `upcase()` function seems to work exactly like `uc()` in PERL.
puts(variable.upcase())
puts(variable.downcase())

# The handy `strip()` function removes leading and trailing whitespaces and
# tabs, but it also works like `chomp()` in PERL, in that it removes the
# trailing new-line character.
puts(variable.strip())

# The obligatory `length()` function, to return the length of the string. This
# can also be used to get the length of an array; that is, the number of
# indices or elements in the array.
puts(variable.length())

# Ugly as it is, you actually do need that question mark — madness! It's a
# handy function though, which allows you to essential perform a simple check
# for a string being within another string, returning a boolean value.
#
# This function can be used on an array to see if an array has an index of the
# given value; very useful. I'm not sure how this would work if you want to
# check for a given index having the given string within it.
puts(variable.include?('Value'))

# Accessing substrings is very easy in Ruby, and does remind me of other
# languages. It's even easier than what you'd ordinarily do in BSH and BASH.
#
# In this example, only the first character is returned. Like other
# languages, `0` is one, and `1` is two.
#
# Even more useful, is the ability to mix the substring with some OO-ness, as
# is demonstrated below, converting and displaying only the 'V' to 'v'.
#
# Like in PERL, ranges are supported using, for example, `0..2`, which in this
# case would display 'Val'. You can use `,` instead of `..` to omit the final
# index, so `0,2` (or `0, 2`) would return `0` and `1`, but not `2`.
#
# You can start from the end of the array by using a negative integer.
puts(variable[0].downcase())

# Erithmetic operations in Ruby works as they do in PERL, and share the usual
# similarities with standard shells.
#
# This also conveniently demonstrates the use of a semi-colon to have Ruby see
# them as new-lines, effectively allowing us to write one-liners, like in
# standard shells.
puts(1 + 1); puts(10 * 2); puts(10 / 2); puts(2 ** 2); puts(10 - 1)

# Return the number rounded up and down, respectively.
#
# I initially wanted to name the variable `Float`, but it was apparently
# already used; I suspect this was because of a same-named class.
floater = 5.5
puts(floater.ceil())
puts(floater.floor())

# Getting input from the user in Ruby is easy, perhaps even more so than in
# PERL, using the `gets()` function (presumably: 'get string').
#
# You don't have to convert it to a string using `to_s()` to avoid an unwanted
# erithmetic operation, because it's of course going to be a string anyway.
#
# I remember being put off by assignment the returned value of a function to a
# variable, years ago. Now, it makes sense and seems practical.
#
# Even more interesting than the use of the `strip()` function, Ruby also has
# a `chomp()` function, which does as the PERL equivalent, but keeps the
# leading and trailing whitespaces and tabs in-tact.
print('PROMPT: ')
Reply = gets().chomp()
puts("You entered: #{Reply}")

# Creating an array is easy enough in Ruby.
#
# If you attempt to return a non-existent index, it'll return `nil`.
#
# Like hashes, the indices can be split up by lines, which is nice to maintain
# sane formatting and overall readability of the code.
random_array = Array[
	'Item_1',
	'Item_2',
	'Item_3'
]

puts('The 2nd index of random_array is: ' + random_array[1])

# Modifying an element/index in an array is as easy as you'd expect in BASH and
# PERL, by simply reassigning the value, specifying the index to reassign.
#
# This would change the 3rd index of `random_array` to 'Item_4' instead of
# 'Item_3'. Pretty straightforward.
#
# This approach can also be used to add new indices to the array.
random_array[2] = 'Item_4'

# Sorting an array in Ruby is as easy as you'd expect in PERL, thankfully.
random_array.sort()

# Making a hash in Ruby is super-simple, just like in PERL. I'm seeing a lot of
# similarities between PERL and Ruby. If anything, it's like Ruby is a
# combination of PERL and Python. This syntax, specfically, is almost as it
# would typically be in PERL.
#
# Although this is obvious for the value, it's worth pointing out that the key
# doesn't have to be a string, but instead can be an integer, float, and even a
# boolean! Possibly others data types.
#
# Ruby supports multidimensional arrays and hashes, like in PERL.
random_hash = {
	'Key_1' => 'Value_1',
	'Key_2' => 'Value_2',
	'Key_3' => [
		'Index_1',
		'Index_2',
		'Index_3'
	]
}

# Accessing an array index from within a hash is as simple as in PERL. Thanks
# to all my time in PERL and some experimenting in languages like Python, using
# Ruby seems to yield expected results.
puts(random_hash['Key_3'][1])

# The obligatory `printf()` function is available in Ruby, too — as if I am
# shocked. It seems to work the same way as in PERL and, presumably, similar to
# the standard shells, with the exception of some of BASH's `printf`
# functionality, of course.
printf("Zero-padded day of the month: %02d\n", 5)

# Defining a function/method is simple in Ruby. It's easy to create positional
# parameters and to even assign a default value. It all seems very easy to use.
def echo(string = 'Empty string.')
	print(string.to_s() + "\n")

	# This could also be used, much as you'd expect in PERL. This would return
	# the value instead of directly printing it to the terminal.
	#
	# Like in PERL, you can provide just the value (any data type) to return
	# (without specifying the `return()` function) on its own.
	#return(string.to_s() + "\n")
end

echo("String given to and printed by the function.")

# A standard `if` statement. Syntax is a bit like VimScript and standard
# shells, but even simpler and quicker to type.
#
# You can also use logical `and` and `or` operators, as in PERL. It does accept
# the `&&` and `||` forms, respectively, also like PERL.
#
# Negation seems to work exactly as in PERL and shells. IE: `!=` or `!` before
# the entire condition.
if variable == 'Value'
	puts('variable is Value')
elsif variable == 'Duh'
	puts('variable is Duh')
else
	puts('variable is neither Value nor Duh')
end

# Erithmetic comparison operators are just as they are in Bourne Shell's
# erithmetic evalation and in PERL.
number = 2
if number > 2
	puts('number is greater than 2')
elif number >= 2
	puts('number is greater than or equal to 2')
elif number < 2
	puts('number is less than 2')
elif number <= 2
	puts('number is less than or equal to 2')
end

# Ruby has `case` statements! Rejoice! This is so much tidier and nicer to use
# than in the usual shells. This isn't even natively available in PERL without
# using an experimental feature, IIRC.
#
# The `else` is just like `*` in shells, like `else` in an `if` statement.
case number
	when 2
		puts('number is still 2')
	when 1
		puts('number is still not 1')
	else
		print('nah')
end

# `while` loop with a counter. Expected stuff, but nicer to use than in PERL.
number = 1
while number <= 10
	puts(number)

	# Cannot use `number++` sadly, but incrementing and decrementing is easy.
	number+=1
end

# `for` loop, iterating over each element in an array. Akin to `foreach` loop
# in PERL, similar to `for WORD in LIST` in PERL, and much like
# `for WORD in ARRAY` in VimScript.
#
# Don't actually need to use a pre-defined array.
my_array = Array['thing_1', 'thing_2', 'thing_3']
for value in my_array
	puts(value)
end

# Alternative approach to `for` looping, using the `each()` function. It's a
# bit weird looking, especially with the pipes, which seem to be required, but
# it works well enough, I guess. I prefer the above standard appraoch, and the
# above is less to type.
my_array.each() do |name|
	puts(name)
end

# As with PERL, you can't just use `~/` or `$HOME` and expect it to work, but
# the builtin `ENV` hash is very useful for this, exactly as in PERL.
bashrc = ENV['HOME'] + '/.bashrc'

# A rough equivalent to a `while read` loop in standard shells. You can also
# use `readchar()` to read each character at a time, which is awesome.
#
# The `readlines()` function returns an array of the lines, like `readarray`
# and `mapfile` in BASH; exceptionally useful. Ruby's cool.
#
# As in PERL, you need to `close()` your files. There's an alternative method
# of accessing files, which presumably doesn't require manually closing, but I
# don't see much point in using it over the below method.
#
# This also demonstrates using a `begin` block to basically `try` some code and
# catch and handle any exceptions/errors, which is very useful.
begin
	fh = File.open(bashrc, 'r')
	while line = fh.readline()
		# Demonstrating how to use the REGEX comparison operator, like in BASH
		# and PERL. You can also use the `match()` string function, if you just
		# need really simple non-pattern matching.
		#
		# In an AWK-esque sort of way, the two `/` are required for REGEX.
		#
		# Negating this REGEX comparison test can be as easy as `!~`.
		print(line) if line =~ /^export/
	end
	fh.close()
rescue EOFError
	# Here we've 'caught' the `EOFError` which will show because `readline()`
	# would otherwise unintelligently try to reach a non-existant line.
	#
	# I wish `readline()` were smart enough here to not bother reading an empty
	# line; this isn't a problem I've come across in PERL.
	#
	# I get that it's useful in certain cases, but surely you could just handle
	# those cases in a suitable way, rather than this being the default?
	#
	# You could use this method to get around this, but I'm not keen on it:
	#
	#   File.open(bashrc, 'r').each() do |line|
	#       ...
	#   end
	#
	# It does work well, so maybe it'll grow on me.
end

# Getting the output from a system command executed by a subshell can be done
# with the backquotes (graves; '`'). Notice that you can even directly do
# something with the string, such as `split()` it into an array.
#
# It's easy to split a string by a chracter, or the default of a whitespace, -
# using the `split()` function. The result is as expected from PERL, and the
# syntax is like in Python.
#
# As in PERL, making `split()` work on an empty string (not `nil`) will
# actually cause it to split each individual character.
#
# Despite not strictly telling Ruby to make the variable an array, Ruby will
# cleverly determine it should be as such.
date = `date`.split(' ')
date.each() do |word|
    puts(word)
end

# Sending output to a specific predefined file descriptor can be done easily
# done, but seems to need a bit more than in PERL.
#
# You can use `puts()`, `print()`, and `printf()` with both STDERR and STDOUT.
STDERR.puts('This string is sent to STDERR.')

# Argument processing in Ruby can be achieved in the same way as in PERL and
# other languages, which is a relief, as this is my got-to method of processing
# positional parameters.
#
# `ARGV` is a special array which stores all of the positional parameters.
# Thankfully, Ruby doesn't add on a bunch of semi-useless elements, such as the
# name of the script; that's likely handled elsewhere.
while ARGV[0]
	puts(ARGV[0])

	ARGV.shift()
end

# Returns the current working directory.
Dir.pwd()

# Returns the user's `$HOME` (`~/`). Alternative method to using `ENV['HOME']`.
Dir.home()

# Creating classes in Ruby is stupidly easy! Coming from PERL, it's so much
# easier! I could see me really enjoying OOP in Ruby, but it doesn't feel
# so clumsy.
#
# None of that annoying blessing or convolted hash systems, like in PERL.
#
# With classes being this easy and practical to create, I can see them being
# quite popular and me using them often, if I end up taking Ruby seriously.
class Cool
    def date
        return(`date`)
    end
end

# Create a new object for the above class, like you often do in PERL.
newcool = Cool.new()

# Access the new class's function/method like you would anything else.
puts(newcool.date())
