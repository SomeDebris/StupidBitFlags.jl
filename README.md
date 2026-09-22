# StupidBitFlags.jl

This package defines the macro `@bitflags`. It defines a series of constants,
each bitsifted once to the left of each other. It is simple and it is stupid.

I bet you can use your own types for the `type` argument. I, however, don't
know how to do that. This is, of course, a package that implements stupid bit
flags.

## Examples
```julia
@bitflags UInt8 FOO BAR COOL AWESOME
```
Creates four constants: `FOO`, `BAR`, `COOL`, and `AWESOME`, with the values
`0x01`, `0x02`, `0x04`, and `0x08`, respectively.

## License
Licensed under the GPLv3.
