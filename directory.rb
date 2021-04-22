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
    puts "what's his/her cohort"
    my_cohort = gets.chomp
    my_cohort = "april" if my_cohort == ""
    puts "what's his/her favorite misdeed?"
    my_crime = gets.chomp
    my_crime = "unknown" if my_crime == ""
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
  #students = students.sort_by {|value| value[:cohort].to_i}
  cohorts = students.map do |student|
      student[:cohort]
    end
    cohorts.uniq.each do |cohort|
      puts "#{cohort} cohort".upcase.center(80)
        students.each do |student|
          puts "#{student[:name]} and the mischief is #{student[:crime]}" if student[:cohort] == cohort
        end
    end
  #students.each_with_index() do |student,index|
  #  puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort) and the mischief is #{student[:crime]}".center (80)
  #end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
	