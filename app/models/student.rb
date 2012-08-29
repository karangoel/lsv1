class Student < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :name, :password, :password_confirmation
  validates_uniqueness_of :email
  
  has_many :enrollments
  has_many :courses, :through => :enrollments
  has_many :topics, :through => :courses
  has_many :lights, :through => :topics
  
  def current_courses
    current = []
    courses.each do |course|
      current << course if course.being_taught?
    end
    current
  end

end
