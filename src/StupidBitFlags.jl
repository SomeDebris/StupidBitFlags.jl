module StupidBitFlags

export @bitflags

"""
```julia
@bitflags(type, names...)
```
Define constants of type `type` with the names in `names...` intended to be
used as bit flags. The first name in `names...` is assigned the value `type(1)`.
Each following name is assigned the value assigned to the previous name bitshifted once
to the left.

Take care to ensure that the number of names that you specify is not greater
than the number of bits in the `type` specified, as many names may be assigned
the same value (`0x0`).

`type` is usually a subtype of [`Unsigned`](@ref) or [`Integer`](@ref).
"""
macro bitflags(type, names...)
    for i in eachindex(names)
        name = names[i]
        @eval export $name
        @eval const $name = $type(1) << ($i - 1)
    end
end

end # module StupidBitFlags
