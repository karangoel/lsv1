# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

course = Course.create([{ title: 'History of USA', section: 'M-F', teacher_id: 1 }])
course = Course.create([{ title: 'History of India', section: 'M-F', teacher_id: 1 }])
course = Course.create([{ title: 'History of Turkmenistan', section: 'M-F', teacher_id: 1 }])
course = Course.create([{ title: 'Mathematics', section: 'T-W', teacher_id: 2 }])
course = Course.create([{ title: 'Computer Science', section: 'T-W', teacher_id: 2 }])

enrollment = Enrollment.create([{ course_id: 1, student_id: 1 }])
enrollment = Enrollment.create([{ course_id: 1, student_id: 2 }])
enrollment = Enrollment.create([{ course_id: 2, student_id: 1 }])
enrollment = Enrollment.create([{ course_id: 2, student_id: 2 }])

student = Student.create([{ name: "John Doe", email: "johndoe@gmail.com"}])
student = Student.create([{ name: "Steve Coyle", email: "csteve@gmail.com"}])

light = Light.create([{ color: "red", topic_id: 1}])
light = Light.create([{ color: "red", topic_id: 1}])
light = Light.create([{ color: "red", topic_id: 1}])
light = Light.create([{ color: "red", topic_id: 1}])
light = Light.create([{ color: "red", topic_id: 1}])

teacher = Teacher.create([{name: "Karan Goel", email: "karangoel@gmail.com"}])
teacher = Teacher.create([{name: "Gurban Haydarov", email: "ghaydarov@gmail.com"}])

topic = Topic.create([{name: "The Americas to 1620", course_id: 1}])
topic = Topic.create([{name: "Multiple Eras", course_id: 1}])
topic = Topic.create([{name: "Colonization and Settlement (1585-1763)", course_id: 1}])
topic = Topic.create([{name: "Progressive Era to New Era (1900-1929)", course_id: 1}])

topic = Topic.create([{name: "Indroduction to Indias Early History", course_id: 2}])
topic = Topic.create([{name: "Aviation History of India", course_id: 2}])
topic = Topic.create([{name: "Cultural History (1585-1763)", course_id: 2}])
topic = Topic.create([{name: "New Era in India (1900-1929)", course_id: 2}])

topic = Topic.create([{name: "Indroduction Turkmenistan", course_id: 3}])
topic = Topic.create([{name: "Soviat Era History of Turkmenistan", course_id: 3}])
topic = Topic.create([{name: "Cultural History of Turkmenistan ", course_id: 3}])
topic = Topic.create([{name: "New Era in Turkmenistan (1900-1929)", course_id: 3}])


topic = Topic.create([{name: "General Concepts", course_id: 4}])
topic = Topic.create([{name: "Integrals", course_id: 4}])
topic = Topic.create([{name: "Equations", course_id: 4}])
topic = Topic.create([{name: "Mathematical Objects", course_id: 4}])

topic = Topic.create([{name: "Indroduction to Programming", course_id: 5}])
topic = Topic.create([{name: "Strings", course_id: 5}])
topic = Topic.create([{name: "Variables", course_id: 5}])
topic = Topic.create([{name: "Arrays", course_id: 5}])

student = User.create([{name: "Karan Goel", email: "karan@goel.com", password_digest: "$2a$10$n9A8Y7gcLMK7NR7FpOXATeUY1meCZddP7zkcILi.e7igqku/uD2U."}])