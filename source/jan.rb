#!/usr/bin/env ruby

#------------------------------------------------------------------------------
# Project Name      - RubyProjects/source/jan.rb
# Started On        - Sat 19 Jun 20:52:04 BST 2021
# Last Change       - Sun 20 Jun 00:14:30 BST 2021
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------
# Displays the full word of a month, when given the short form of it. Pointless
# but educational exercise.
#
# Features:
#
#TODO: Check the user's input case-insensitively.
#
# Bugs:
#
# N/A
#
#------------------------------------------------------------------------------

CurVer = '2021-06-19'
Progrm = 'jan.rb'

def usage
	puts("Usage: #{Progrm} [OPTS] MONTH_1 [MONTH_2 ...]")
end

def error(status, string)
	STDERR.printf("ERROR: %s\n", string)
	exit(status) if status > 0
end

months = [
	'January', 'February', 'March', 'April', 'May', 'June', 'July',
	'August', 'September', 'October', 'November', 'December'
]

while ARGV[0]
	if ARGV[0] == '--help' or ARGV[0] == '-h'
		usage()
	elsif ARGV[0] =~ /^-/
		error(1, 'Incorrect option(s) specified.')
	else
		break
	end

	ARGV.shift()
end

ARGV.each() do |arg|
	for word in months
		if word[0..2] == arg[0..2]
			puts(word)
		end
	end
end
