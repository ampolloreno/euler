struct fibgen
    max::Int
end

Base.start(::fibgen) = (0, 1)
Base.next(S::fibgen, state) = (state[1], (state[2], state[1] + state[2]))
Base.done(S::fibgen, state) = state[1] > S.max

print(reduce(+, Iterators.filter(t -> t%2 == 0, fibgen(4e6))))
