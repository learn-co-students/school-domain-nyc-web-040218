class School
  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    self.roster = {}
  end

  def add_student (student_name, grade)
    if self.roster[grade] == nil
      self.roster[grade] = [student_name]
    else
      self.roster[grade].push(student_name)
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort()
    sorted_roster = {}

    self.roster.each do |grade, students_arr|
      sorted_roster[grade] = students_arr.sort()
    end

    sorted_roster
  end
end
