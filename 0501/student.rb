class School

  attr_accessor :name, :students

  def initialize(name)
    @name = name
    @students = {}
  end

  def add(name, grade)
    student_name = name
    student_grade = grade
    @students["#{student_name}"] => grade
  end

  def grade(grade)
    all_grade = []
    @students.each do |student, level|
      # if @students["#{student}"] == grade
      #   all_grade.push(student)
      if h = @students.find { |h| h['student'] == 'grade' }
        p h['student']
      else
        puts 'Not found!'
      end
    end
  end

end
