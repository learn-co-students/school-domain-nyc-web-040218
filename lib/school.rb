class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(s_name, s_grade)
    (@roster[s_grade] ||= []) << s_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value{|v| v.sort!}
  end

end
