# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    arr = fib([1, 2])
    sum = 0

    arr.each do |num|
      if num % 2 == 0
        sum += num
      end
    end

    sum
  end

  def fib(array)
    if array[-1] + array[-2] > @limit
      array
    else
      sum = array[-1] + array[-2]
      array.push(sum)
      fib(array)
    end
  end

end