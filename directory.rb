#let´s put all the students into an array
=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
=end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    puts "what's your cohort"
    my_cohort = gets.chomp
    if my_cohort == ""
      my_cohort = "april"
    end
    puts "what's your favorite misdeed?"
    my_crime = gets.chomp
    if my_crime == ""
      my_crime = "unknown"
    end
    #add the student hash to the array
    students << {name:name, cohort:my_cohort, crime:my_crime}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  students
end


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  students.each_with_index() do |student,index|
    puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort) and the mischief is #{student[:crime]}".center (80)
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
	