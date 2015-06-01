
def prime_factors_recursive(number)
  if number == 1
    return []
  end

  found_factor = (2..number).find {|increment| number % increment == 0}
  [found_factor] + prime_factors_recursive(number / found_factor)
end

def prime_factors_iterative(number)
  factors = []
  ceiling = number**0.5
  check = 2
  while check <= ceiling
    if number % check == 0
      factors << check
      number /= check
      ceiling = number**0.5
      check = 2
      next
    end
    check += 1
  end
  factors << number
  return factors
end
