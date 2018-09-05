import Random


"""
    simulate_groupnames(n::Int; nchar::Int=2)

Create vector of random group names of length `n` containing `nchar` characters.

# Arguments
- `n::Int`: Number of group names.
- `nchar::Int`: Number of random characters in the name.

!!! note

    **Ideas / help required:**
    - Can be enhanced to make it more procedural and less random (See [#8](https://github.com/neuropsychology/Psycho.jl/issues/8))
    - implement different types simulations (e.g., "A, B... AA, AB...") (See [#8](https://github.com/neuropsychology/Psycho.jl/issues/8))

# Examples
```jldoctest
simulate_groupnames(10)

# output

10-element Array{String,1}:
[...]
```
"""
function simulate_groupnames(n::Int; nchar::Int=2)

  groupnames = string.(collect(1:n))
  if nchar > 0
    id_char = sort!([Random.randstring(join('A':'Z'), nchar) for i = 1:n])
    groupnames = groupnames .* id_char
  end

  return groupnames
end
