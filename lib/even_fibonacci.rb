# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  arr = fib([1, 2], limit)
  sum = 0

  arr.each do |num|
    if num % 2 == 0
      sum += num
    end
  end

  sum
end

def fib(array, limit)
  if array[-1] + array[-2] > limit
    array
  else
    sum = array[-1] + array[-2]
    array.push(sum)
    fib(array, limit)
  end
end
