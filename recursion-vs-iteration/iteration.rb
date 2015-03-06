require "benchmark"

def all_prime_factors(num)
  prime_factors = []
  if prime?(num) == true
    return "number is prime"
  else
    until prime?(num) == true
      lowest_factor = lowest_factor(num)
      num = num / lowest_factor
      # if prime?(lowest_factor) == true
      prime_factors << lowest_factor
      # end
      # if prime?(num) == true
      # end
    end
    prime_factors << num
  end
  return prime_factors
end

def prime?(num)
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

puts Benchmark.measure{all_prime_factors(123123123)}