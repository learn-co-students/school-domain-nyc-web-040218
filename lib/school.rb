require 'pry'

class School

attr_accessor :roster

def initialize(name)
    @name = name
    @roster = {}
end

def add_student (student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name    
    
end 

def grade(grade)
    @roster[grade]
end 


def sort
#    @roster.each_pair {|key, value|value.sort}
   @roster.each {|key, value| value.sort! }


end 


    # value of each key will be an array of student names


end


#School.new("Long Reach HS")

