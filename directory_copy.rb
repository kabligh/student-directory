def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # Ask what country they are from
  puts "What country are they from?"
  country = gets.chomp
  # while the name and country is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, country: country, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter another name"
    name = gets.chomp
    unless name.empty?
      puts "What country are they from?"
      country = gets.chomp
    end
  end
  # return the array of students
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students.each do |student|
    puts "#{student[:name]}, from #{student[:country]}, #{student[:cohort]} cohort"
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
