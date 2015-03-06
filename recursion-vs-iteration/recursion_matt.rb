require "benchmark"

def all_prime_factors_recursive(num, factors = [])

  return nil if num == 1
  return factors << num if is_prime?(num) # base case: breaks the recursion
  # base case must be conditional

  factors << lowest_factor(num)
  num = num / lowest_factor(num)
  all_prime_factors_recursive(num, factors) # the recursion
end

def is_prime?(num)
  factors = []
  range = (2..num-1).to_a

  if num == 1
    return false

  elsif num == 2
    return true

  elsif lowest_factor(num) == nil
    return true

  else
    range.each do | poss_factor |
      if num % poss_factor == 0
        factors << poss_factor
      end
    end

    if factors.length == 0
      return true
    else
      return false
    end
  end
end

def lowest_factor(num)
  range = (2..num-1).to_a
  return range.find { |poss_factor| (num % poss_factor) == 0 } #finds the first possible factor
end

puts Benchmark.measure{all_prime_factors_recursive(123123123)}