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



# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# 
# Time.zone = "America/Chicago"
# 
# Course.destroy_all
# Enrollment.destroy_all
# Topic.destroy_all
# Light.destroy_all
# Student.destroy_all
# Teacher.destroy_all
# 
# # teacher = Teacher.create([{name: "Jeff Cohen", email: "jeff@codeacademy.org"}])
# # teacher = Teacher.create([{name: "Karan Goel", email: "karangoel@gmail.com"}])
# # teacher = Teacher.create([{name: "Gurban Haydarov", email: "ghaydarov@gmail.com"}])
# 
# puts 'Creating teachers.'
#   2.times do |i|
#     t = Teacher.new :email => "teacher#{i}@gmail.com",
#                     :name => "First#{i} Last#{i}"
#     t.save
#       
#     puts 'Creating courses.'
#     
#     5.times do
#         course_number = rand(0..4)
# 
#         if course_number = 0
#           course = "History of USA"
#         elsif course_number = 1
#           course = "History of India"
#         elsif course_number = 2
#           course = "History of Turkmenistan"
#         elsif course_number = 3
#           course = "Mathematics 101"
#         else course_number = 4
#           course = "Comp Sci 101"
#         end
# 
#         section_num = rand(0..3)
# 
#         if section_num = 0
#           section = "MWF 1 - 3 PM"
#         elsif section_num = 1
#           section = "MWF 3:30 - 5:30 PM"
#         elsif section_num = 2
#           section = "TuTh 1 - 3 PM"
#         else section_num = 2
#           section = "TuTh 3:30 - 5:30 PM"
#         end
# 
#         c = Course.new :title => course,
#                        :teacher_id => t.id,
#                        :section => section
#         c.save
#                         
#          puts 'Creating students.'
#             5.times do |i|
#               s= Student.new :email => "user#{i}@gmail.com",
#                              :name => "First#{i} Last#{i}",
#                              :password => 'test',
#                              :password_confirmation => 'test'
#               s.save
#               puts 'Creating enrollments'
# 
#               40.times do
# 
#                 Enrollment.create :course_id => c.id,
#                                   :student_id => s.id
#               end       
# 
#             end
#                         
#         end
#         
#        
#                  
#   end
# 
# 
#              
# 
#   # 
#   # 
#   # enrollment = Enrollment.create([{ course_id: 1, student_id: 1 }])
#   # enrollment = Enrollment.create([{ course_id: 1, student_id: 2 }])
#   # enrollment = Enrollment.create([{ course_id: 2, student_id: 1 }])
#   # enrollment = Enrollment.create([{ course_id: 2, student_id: 2 }])
# 
# 
# 
# 
# puts 'Creating lights.'  
#   500.times do 
#     color_number = rand(0..2)
#     
#     if color_number = 0
#       color = "red"
#     elsif color_number = 1
#       color = "green"
#     else color_number = 2
#       color = "blue"
#     end
#     
#     topic_id = rand(0..30)
#     student_id = rand(0..10)
#     
#     Light.create :color => color,
#                   :topic_id => topic_id,
#                   :student_id => student_id
#   end
# 
# light = Light.create([{ color: "red", topic_id: 1}])
# light = Light.create([{ color: "red", topic_id: 1}])
# light = Light.create([{ color: "red", topic_id: 1}])
# light = Light.create([{ color: "red", topic_id: 1}])
# light = Light.create([{ color: "red", topic_id: 1}])
# 
# topic = Topic.create([{name: "The Americas to 1930", course_id: 1}])
# topic = Topic.create([{name: "Multiple Eras", course_id: 1}])
# topic = Topic.create([{name: "Colonization and Settlement (1585-1763)", course_id: 1}])
# topic = Topic.create([{name: "Progressive Era to New Era (1900-1929)", course_id: 1}])
# 
# topic = Topic.create([{name: "Indroduction to Indias Early History", course_id: 2}])
# topic = Topic.create([{name: "Aviation History of India", course_id: 2}])
# topic = Topic.create([{name: "Cultural History (1585-1763)", course_id: 2}])
# topic = Topic.create([{name: "New Era in India (1900-1929)", course_id: 2}])
# 
# topic = Topic.create([{name: "Indroduction Turkmenistan", course_id: 3}])
# topic = Topic.create([{name: "Soviat Era History of Turkmenistan", course_id: 3}])
# topic = Topic.create([{name: "Cultural History of Turkmenistan ", course_id: 3}])
# topic = Topic.create([{name: "New Era in Turkmenistan (1900-1929)", course_id: 3}])
# 
# 
# topic = Topic.create([{name: "General Concepts", course_id: 4}])
# topic = Topic.create([{name: "Integrals", course_id: 4}])
# topic = Topic.create([{name: "Equations", course_id: 4}])
# topic = Topic.create([{name: "Mathematical Objects", course_id: 4}])
# 
# topic = Topic.create([{name: "Indroduction to Programming", course_id: 5}])
# topic = Topic.create([{name: "Strings", course_id: 5}])
# topic = Topic.create([{name: "Variables", course_id: 5}])
# topic = Topic.create([{name: "Arrays Part 1", course_id: 5}])
# topic = Topic.create([{name: "Arrays Part 2", course_id: 5}])
# 
