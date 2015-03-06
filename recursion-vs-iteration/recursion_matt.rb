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