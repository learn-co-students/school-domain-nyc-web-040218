# code here!
class School
    attr_accessor :student_name, :student_grade, :roster
    attr_reader :school_name
    attr_writer

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        if @roster.keys.include?(student_grade)
            self.roster[student_grade].push(student_name)
        else        
            self.roster[student_grade] = [student_name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.map do |grade, names|
            sorted[grade] = names.sort
        end
        sorted
    end
end