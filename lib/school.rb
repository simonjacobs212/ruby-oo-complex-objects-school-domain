require 'pry'

# code here!

class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade]
        @roster[grade] << name
        else
        @roster[grade] = name.split(", ")
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_with_object({}) {|(grade, students), new_hash| students.sort! && new_hash[grade] = students}
    end
end