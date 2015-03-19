# Print the contents of an array of sixteen numbers, four numbers at a time,
# using each_slice in Enumerable.
max = 16
group_count = 4

a =*(1..max)
a.each_slice(group_count) { |i| p i }
