function euclid(m, n)
  @assert m > n
  r = m % n
  while r != 0
    r = m % n
    m = n
    n = r
  end
  m
end

res = 6
# starting here so that m > n
for i in 4:20
  if !((res % i) == 0)
    res *= (i / euclid(res, i))
  end
end
print(res)
