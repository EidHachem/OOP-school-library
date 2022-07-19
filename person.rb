require_relative './nameable'
require_relative './decorator'
# Person class
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission = 'true')
    super()
    @id = Random.rand(1..10.000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end

# person = Person.new(22, 'maximilianus')
# p  person.correct_name
#  capitalizedPerson = CapitalizeDecorator.new(person)
# p  capitalizedPerson.correct_name
#  capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
# p  capitalizedTrimmedPerson.correct_name
