# code here!

class School
  
  attr_accessor :school, :roster
 
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.select do | grade, name_array | 
      name_array.sort!
    end
  end

end

