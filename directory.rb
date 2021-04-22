@students = [] #and empty array accesible to all the methods

def interactive_menu
  loop do
   print_menu
   process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" #because we will be adding more items
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
  end
end

def show_students
  print_header
  print
  print_footer
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
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
    @students << {name:name, cohort:my_cohort, crime:my_crime}
    if @students.count == 1
      puts "Now we have 1 student"
    else
      puts "Now we have #{@students.count} students"
    end
    #get another name from the user
    name = gets.chomp
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "________________________________"
end

def print
  if @students.count < 1
    puts "No student enrolled at this school"
  else
    cohorts = @students.map do |student|
      student[:cohort]
    end
    cohorts.uniq.each do |cohort|
      puts "#{cohort} cohort".capitalize.center(80)
        @students.each do |student|
          puts "#{student[:name]} and the mischief is #{student[:crime]}" if student[:cohort] == cohort
        end
    end
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

#nothing happens until we call the methods
interactive_menu
