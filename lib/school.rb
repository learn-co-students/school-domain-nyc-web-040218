require "pry"

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

      def grade(grade)
        @roster[grade].sort
      end

      def sort
         @roster.each_value do |student| student.sort!
         end
      end

end
