def print_header
	puts "These are the students in my cohort at Makers Academy !".center(100)
	puts "------------".center(100)
end

def print(students)
	students.each_with_index do |student, x|
		puts "#{x + 1}. #{student[:name]} (#{student[:cohort]} cohort) from #{student[:country]}"
	end
end

def first_letter_filter(students) 
    puts "Classify the names by choosing the first letter of the names:".center(100)
    letter = gets.chomp
    selected_students = students.select { |student| student[:name].chars.first == letter }
    print(selected_students)
end

def namelength(students)
	puts "Please choose the maximum name length in characters: ".center(100)
	size = gets.chomp.to_i
	selected_students = students.select { |student| student[:name].length <= size}
	print(selected_students)
end

def print_footer(names)
	if names.length == 1
		puts "There is one student.".center(100)
	else
		puts "Overall, there are #{names.length} great students.".center(100)
	end
end 

def interactive_menu
	students = []
	loop do
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit."

		selection = gets.chomp

		case selection
		when "1"
			students = input_students
		when "2"
			print_header
			print(students)
			print_footer(students)
		when "9"
			exit
		else
			puts "I don't understand. Please try again."
		end

	end
end


def input_students
	puts "Please enter the names of the students:".center(100)
	puts "To finish, just press enter twice..".center(100)

	# Creating an empty array
	students =[]
	# Now, to ask input from user to get the first name
	name = gets.chomp
	
	# While the name is not empty, repeat this code
	while !name.empty? do
		# Add the student hash to the array
		puts "Please enter the cohort."
		cohort = gets.chomp

		puts "Please enter the country"
		country = gets.chomp
		students << {:name => name, :cohort => cohort, :country => country}
		if students.length > 1
			puts "Now there are #{students.length} students"
		else
			puts "Now there is #{students.length} student"
		end
		# Get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

interactive_menu
students = input_students
print_header
print(students)
print_footer(students)
# first_letter_filter(students)
# namelength(students)
