# Write a simple grep that will print the lines of a file having any occurences
# of a phrase anywhere in that line.
def usage()
  puts
  puts "./grep_file_for_phrase.rb <filename> <grep phrase>"
  puts
  exit
end

unless ARGV.length == 2
  usage
end

filename=ARGV[0]
grep_phrase=ARGV[1]
File.readlines(filename).each do |line|
  if /#{grep_phrase}/.match(line)
    puts line
  end
end
