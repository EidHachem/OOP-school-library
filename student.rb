require_relative './person'
# student class
class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: 'true')
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end
end
