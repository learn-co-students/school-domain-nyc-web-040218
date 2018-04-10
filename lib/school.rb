# code here!
class School

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |grade, student_arr|
      student_arr.sort!
    end
  end
  @roster
end
