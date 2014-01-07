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
# and now to print them
puts "These are the students in my cohort at Makers Academy"
puts "------------"

students.each do |student|
	puts student
end

# Total number of students
puts "Overall, there are #{students.length} great students"
# This is just a side note to say that print does not add new lines.