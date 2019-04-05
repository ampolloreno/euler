sum = 0
for i = 1:999
  if i % 3 == 0
    sum += i
  elseif i % 5 == 0
    sum += i
  end
end
print(sum)
