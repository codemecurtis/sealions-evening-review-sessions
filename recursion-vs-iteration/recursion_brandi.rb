require "benchmark"

def prime_factors(number)
  if number == 1
    return []
  end

  found_factor = (2..number).find {|increment| number % increment == 0}
  [found_factor] + prime_factors(number / found_factor)
end

puts Benchmark.measure{prime_factors(123123123)}