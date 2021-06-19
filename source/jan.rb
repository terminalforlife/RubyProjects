#!/usr/bin/env ruby

#------------------------------------------------------------------------------
# Project Name      - RubyProjects/source/jan.rb
# Started On        - Sat 19 Jun 20:52:04 BST 2021
# Last Change       - Sat 19 Jun 21:25:23 BST 2021
# Author E-Mail     - terminalforlife@yahoo.com
# Author GitHub     - https://github.com/terminalforlife
#------------------------------------------------------------------------------
# Displays the full word of a month, when given the short form of it. Pointless
# but educational exercise.
#
# Features:
#
#TODO: Check the user's input case-insensitively.
#TODO: Use array of months and iterate over each to check the first 3 letters.
#
# Bugs:
#
# N/A
#
#------------------------------------------------------------------------------

CurVer = '2021-06-19'
Progrm = 'jan.rb'

def usage
	puts('Usage: ' + Progrm + '[OPTS]')
end

def error(status, string)
	STDERR.printf("ERROR: %s\n", string)
	exit(status) if status > 0
end

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

if ARGV[0] == 'Jan'
	puts('January')
elsif ARGV[0] == 'Feb'
	puts('February')
elsif ARGV[0] == 'Mar'
	puts('March')
elsif ARGV[0] == 'Apr'
	puts('April')
elsif ARGV[0] == 'May'
	puts('May')
elsif ARGV[0] == 'Jun'
	puts('June')
elsif ARGV[0] == 'Jul'
	puts('July')
elsif ARGV[0] == 'Aug'
	puts('August')
elsif ARGV[0] == 'Sep'
	puts('September')
elsif ARGV[0] == 'Oct'
	puts('October')
elsif ARGV[0] == 'Nov'
	puts('November')
elsif ARGV[0] == 'Dec'
	puts('December')
end
