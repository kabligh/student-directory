def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # Ask their cohort
  puts "What cohort month are they in? (first 3 letters)"
  cohort = gets.chomp.capitalize.to_sym
  months = [:Jan, :Feb, :Mar, :Apr, :May, :Jun, :Jul, :Aug, :Sep, :Oct, :Nov, :Dec]
  # If the cohort input doesn't match a symbol in the months array
  if !cohort.empty? && !months.include?(cohort)
    loop do
      puts "Incorrect spelling. Please enter the month of the cohort (first 3 letters)"
      cohort = gets.chomp.capitalize.to_sym
      break if months.include?(cohort)
    end
  end
  # while the name is not empty, repeat this code
  while !name.empty? do
    if cohort.empty?
      cohort = :unknown
    end
    # add the student hash to the array
    students << {name: name, cohort: cohort}
    if students.length == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    # get another name from the user
    puts "Please enter another name or hit enter if no more students"
    name = gets.chomp
    unless name.empty?
      puts "What cohort are they in?"
      cohort = gets.chomp.capitalize.to_sym
      if !cohort.empty? && !months.include?(cohort)
        loop do
          puts "Incorrect spelling. Please enter the month of the cohort (first 3 letters)"
          cohort = gets.chomp.capitalize.to_sym
          break if months.include?(cohort)
        end
      end
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
      puts "#{student[:name]} (#{student[:cohort]} cohort)".center(50)
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
