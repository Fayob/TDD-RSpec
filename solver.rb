# solver class
class Solver
  def initialize(value)
    @value = value
  end

  def factorial(integer)
    return "#{integer} is not a positive value" if integer.negative?
    return 1 if integer.zero?

    integer * factorial(integer - 1)
  end

  def reverse(word)
    @value.reverse(word.chars.reverse.join)
  end

  def fizzbuzz(integer)
    return 'Please provide a valid number' unless integer.is_a? Integer

    if (integer % 3).zero? && (integer % 5).zero?
      'fizzbuzz'
    elsif (integer % 3).zero?
      'fizz'
    elsif (integer % 5).zero?
      'buzz'
    else
      integer.to_s
    end
  end
end
