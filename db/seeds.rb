Student.create!( :name => "Yammy")
Teacher.create!( :name => "Tonny")
Course.create!( :name => "Math", :teacher_id => 1)
TeacherRelationship.create!( :student_id => 1, :teacher_id => 1)
CourseRelationship.create!( :student_id => 1, :course_id => 1)

puts "Created successfully!"
