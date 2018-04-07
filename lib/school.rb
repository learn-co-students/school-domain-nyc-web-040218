require "pry"

# code here!
class School

attr_accessor :roster, :name

  def initialize(roster)
    @roster = {}
  end

def add_student(student, grade)
  roster[grade] ||= []
roster[grade] << student
end

def grade(their_grade)
  roster[their_grade]
end

def sort
  sorted_students = {}
  roster.each { |grades, students| sorted_students[grades] = students.sort }
  sorted_students
end


end
