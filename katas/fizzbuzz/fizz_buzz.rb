class FizzBuzz

  def say(n)
    if n.modulo(5) == 0
      return 'Buzz'
    else
      return 'Fizz'
    end
  end

end
