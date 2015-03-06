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