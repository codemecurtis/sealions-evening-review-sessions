require_relative "iteration_peter"
require "benchmark/ips"

test_numbers = []

10.times do 
  test_numbers << rand(10**9)
end

Benchmark.ips do |x|
  x.report("recursive"){ 
    test_numbers.each{|num| prime_factors_recursive(num)}
  }
  x.report("iterative"){ 
    test_numbers.each{|num| prime_factors_iterative(num)}
  }
  x.compare!
end