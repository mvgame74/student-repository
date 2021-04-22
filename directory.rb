
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    puts "what's his/her cohort"
    my_cohort = gets.chomp
    my_cohort = "april" if my_cohort == ""
    puts "what's his/her favorite misdeed?"
    my_crime = gets.chomp
    my_crime = "unknown" if my_crime == ""
    #add the student hash to the array
    students << {name:name, cohort:my_cohort, crime:my_crime}
    if students.count == 1
      puts "Now we have 1 student"
    else
      puts "Now we have #{students.count} students"
    end
    #get another name from the user
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "________________________________"
end

def print(students)
  cohorts = students.map do |student|
      student[:cohort]
    end
    cohorts.uniq.each do |cohort|
      puts "#{cohort} cohort".capitalize.center(80)
        students.each do |student|
          puts "#{student[:name]} and the mischief is #{student[:crime]}" if student[:cohort] == cohort
        end
    end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
	