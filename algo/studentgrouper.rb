def output_maker(new_students,n,group_count)
   puts "Group #{group_count}: #{new_students[n]} and #{new_students[n+1]}"
   group_count += 1
   n += 2
   return new_students,n,group_count
end

students = []
n = 1
response = ""

while response != "done"
 puts "Enter student number #{n} and enter 'done' when done:"
 n += 1
 response = gets.chomp
 if response != "done"
  students << response
 end
end

new_students = []
new_students = students.shuffle
n = 0
group_count = 1

if new_students.length % 2 == 0
 until n >= new_students.length
   new_students,n,group_count = output_maker(new_students,n,group_count)
 end
else
  until n >= new_students.length-3
    new_students,n,group_count = output_maker(new_students,n,group_count)
  end
  print "Group #{group_count}: "
  until n == new_students.length-1
    print "#{new_students[n]}, "
    n += 1
  end
  print "and #{new_students[n]}\n"
end