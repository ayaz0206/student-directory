# Putting all the students into an array
students = [
	 "Abraham Thomas"
	 "Andrew Krahmal"
	 "Ayaz Goulamabasse"
	 "Berta Gutierrez"
	 "Biwek Shrestha"
	 "Colin Frankish"
	 "James Hunter"
	 "Jorja Tracy Hung"
	 "Kalle Malmiharju"
	 "Makis Otman"
	 "Megan Folsom"
	 "Mihai-Liviu Cojocar"
	 "Nabin Rai"
	 "Peter Saxton"
	 "Rolando Barbella"
	 "Roy Gardiner"
]
def print_header
	puts "These are the students in my cohort at Makers Academy"
	puts "------------"
end

def print(names)
	names.each do |student|
		puts name
	end
end

def print_footer(names)
	puts "Overall, there are #{students.length} great students"
end 
# nothing happens until we call the methods.
print_header
print(students)
print_footer(students)
