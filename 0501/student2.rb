require 'pry'

class School

  def initialize(name)
    @students = {}
  end

  def db
    @students
  end

  def grade(year)
    @students[year]
  end

  def add(name, grade)
    if @students[grade] == nil
      @students[grade] = [name]
    else
      @students[grade] << name
    end

#    @students[grade] ||= []
#    @students[grade] << name

  end

end

binding.pry
