def prime_factors(number)
  if number == 1
    return []
  end

  found_factor = (2..number).find {|increment| number % increment == 0}
  [found_factor] + prime_factors(number / found_factor)
end


p prime_factors(6) # == [2,3]
p prime_factors(25) # == [5,5]
p prime_factors(123123123) # == [3,3,41, 333667]