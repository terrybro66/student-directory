def input_students
  puts 'Please enter the names of the students'
  puts 'To finish, just hit return twice'
  students = []
  name = gets.chomp
  until name.empty?
    students << { name: name, cohort: :november }
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts 'The students of Villains Academy'
  puts '-------------'
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
