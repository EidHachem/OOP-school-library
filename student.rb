# frozen_string_literal: true

require_relative './person'
# student class
class Student < Person
  def initialize(classroom)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    puts "¯\(ツ)/¯"
  end
end
