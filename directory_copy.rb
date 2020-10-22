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
  # Ask their cohort
  puts "What cohort are they in?"
  cohort = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, country: country, cohort: cohort}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter another name"
    name = gets.chomp
    unless name.empty?
      puts "What country are they from?"
      country = gets.chomp
      puts "What cohort are they in?"
      cohort = gets.chomp
    end
  end
  # return the array of students
  students
end
def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end
def print(students)
  students.each do |student|
    if student[:country].empty? && student[:cohort].empty?
      puts "#{student[:name]}, from unknown country, November cohort".center(50)
    elsif student[:cohort].empty?
      puts "#{student[:name]}, from #{student[:country]}, November cohort".center(50)
    elsif student[:country].empty?
      puts "#{student[:name]}, from unknown country, #{student[:cohort]} cohort".center(50)
    else
      puts "#{student[:name]}, from #{student[:country]}, #{student[:cohort]} cohort".center(50)
    end
  end
end
def print_footer(students)
  puts "-------------".center(50)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
