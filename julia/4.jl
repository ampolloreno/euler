max = 0
for i in 100:999
  for j in 100:999
    if (i*j > max) & (string(i*j) == reverse(string(i*j)))
     max = i*j
    end
  end
end
print(max)
