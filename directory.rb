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
    #add the student hash to the array
    students << {name:name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
#return the array of students
  students
end


def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  total = 0
  while total < students.count
  puts "#{students[total][:name]} (#{students[total][:cohort]})"
  total += 1
  #puts "Printing students starting with: "
  #letter = gets.chomp
  #total = students.count
  #while total > 0
  #students.each_with_index() do |student,index|
    #puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].slice(0) == letter
    #puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].length < 12
    #puts "#{student[:name]} (#{student[:cohort]} cohort)"
    #puts "#{students[total][:name]} (#{students[total][:cohort]} cohort)"
    #total -= 1
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
	