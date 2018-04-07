require 'pry'
class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
  end

  def grade(their_grade)
    @roster[their_grade]
    # @roster
  end

  def sort
    # binding.pry
    updated_roster = {}
    @roster.each do |grades, students|
      updated_roster[grades] = students.sort
    end
    # new_keys = @roster.keys.sort
    # new_values = @roster.values.sort
    # updated_roster[new_keys] = new_values
    updated_roster
  end
end

#School #sort is able to sort the students
