# Print the contents of an array of sixteen numbers, four numbers at a time,
# using just each.
max = 16
group_count = 4

a =*(1..max)
a.each { |i|
  print i
  if (i == a.length || i % group_count == 0)
    puts
  else
    print ','
  end
}
