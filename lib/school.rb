require 'pry'

class School

attr_accessor :school_name, :student_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
       roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def grade(grade_num)
    if @roster.has_key?(grade_num)
      return @roster[grade_num]
    else
      puts "No information for that grade."
    end
  end

  def sort
    sorted_hash = {}
    @roster.sort.each do |grade, name_array|
      sorted_hash[grade] = (name_array.sort)
    end
    sorted_hash
  end

end