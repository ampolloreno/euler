function r_fib(n, record)
  if n in record.keys
    print(n)
    print("\n")
    n
  else
    res = fib(n-1, record) + fib(n-2, record)
    record[n] = res
    res
  end
end

function l_fib(n)
  lastlast = big(1)
  last = big(2)
  total = big(2)
  for i in 2:n
     temp = last + lastlast
     lastlast = last
     last = temp
     if (last % 2 == 0) & (last <= 4000000)
       total += last
     end
  end
  total
end


print(l_fib(4000))
