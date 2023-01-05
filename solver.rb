class Solver
  def initialize value
    @value = value
  end

  def factorial (integer)
    return "#{integer} is not a positive value" if integer < 0
    return 1 if integer == 0
    integer * factorial(integer - 1)
  end

  def reverse word
    @value.reverse(word.split('').reverse.join(''))
  end

  def fizzbuzz integer
    return "Please provide a valid number" if !integer.is_a? Integer
    if integer % 3 == 0 && integer % 5 == 0
      "fizzbuzz"
    elsif integer % 3 == 0
      "fizz"
    elsif integer % 5 == 0
      "buzz"
    else
      integer.to_s 
    end
  end
end