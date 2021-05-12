class Classroom
  attr_reader :subject, :capacity, :students

  def initialize(subject, capacity, students=[])
    @subject = subject
    @capacity = capacity
    @students = students
  end

  def add_student(student)
    @student = student
    students << student
  end

  def yell_at_students
    students.map!(&:upcase)
  end

  def over_capacity?
    if students.count > 4
      true
    else
      false
  end

  # def kick_out
  #   if students.over_capacity? = true
  #     students.last
  #   elsif students.over_capacity? = false
  # end
  end
end
#
classroom = Classroom.new('History', 4)
classroom.add_student('Mike')
classroom.add_student('Megan')
classroom.add_student('Bob')
classroom.yell_at_students
