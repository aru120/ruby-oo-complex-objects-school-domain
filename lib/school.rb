require 'pry'

# code here!
class School

    
    def initialize(school_name)
        @school = school_name
        @roster = {}
    end

    def roster
        @roster 
    end

    def add_student(name,age)
       
        if @roster.has_key?(age)
            @roster[age] << name
        else
        @roster[age] = []
        @roster[age] << name
        end     
    end

    def grade(age)
       @roster[age]    
    end

    def sort
        @sorted_hash = {}
        @roster.each do |k, v|
            @sorted_hash[k] = v.sort
           
        end
        @sorted_hash
       
    end


end
