# Putting all the students into an array
students = [
	 ["Abraham Thomas", :january],
	 ["Andrew Krahmal", :january],
	 ["Ayaz Goulamabasse", :january],
	 ["Berta Gutierrez", :january],
	 ["Biwek Shrestha", :january],
	 ["Colin Frankish", :january],
	 ["James Hunter", :january],
	 ["Jorja Tracy Hung", :january],
	 ["Kalle Malmiharju", :january],
	 ["Makis Otman", :january],
	 ["Megan Folsom", :january],
	 ["Mihai-Liviu Cojocar", :january],
	 ["Nabin Rai", :january],
	 ["Peter Saxton", :january],
	 ["Rolando Barbella", :january],
	 ["Roy Gardiner", :january],
]
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
	puts "Overall, there are #{students.length} great students"
end 
# nothing happens until we call the methods.
print_header
print(students)
print_footer(students)
