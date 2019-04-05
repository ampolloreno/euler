function largest_prime_div(n)
  if n == 1
    return 1
  end

  last = 1
  for i in 1:Int64(floor(sqrt(n)))
    if n % i == 0
      if largest_prime_div(i) == 1
        last = i
      end
    end
  end
  last
end
print(largest_prime_div(600851475143))
