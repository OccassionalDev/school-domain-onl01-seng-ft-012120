# code here!

class School
  attr_reader :school_name, :roster
  
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end 
  
  def add_student(student_name, grade)
    if @roster.include?(grade)
      @roster[grade] << student_name
      
    else 
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end 
  
  def grade(class_grade)
    return @roster[class_grade]
  end 
  
  def sort
  @roster.each do |grade, student_list|
      @roster[grade] = student_list.sort
    end 
  end
end 