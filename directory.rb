def print_header
	puts "These are the students in my cohort at Makers Academy"
	puts "------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, there are #{names.length} great students"
end 

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just press enter twice"
	# Creating an empty array
	students =[]
	# Now, to ask input from user to get the first name
	name = gets.chomp
	# While the name is not empty, repeat this code
	while !name.empty? do
		# Add the student hash to the array
		students << {:name => name, :cohort => :november}
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

students = input_students
print_header
print(students)
print_footer(students)
