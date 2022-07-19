require_relative './nameable'

# Decorator class
class Decorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

# CapitalizeDecorator class
class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

# TrimmerDecorator class
class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name[0, 10]
  end
end
