require_relative './person'
require_relative './classroom'
# student class
class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: 'true')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end

  def classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
