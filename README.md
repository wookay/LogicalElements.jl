# LogicalElements 🧩

| **Documentation**                       | **Build Status**                |
|:---------------------------------------:|:-------------------------------:|
| [![][docs-latest-img]][docs-latest-url] | [![][actions-img]][actions-url] |

It is a Julia package for a data structure like `Vector`.
but this is useful for storing elements for logical operators.

```julia-repl
julia> using LogicalElements: AND, OR, NOT, ∧, ∨, ¬

julia> AND(1, 2) == 1 ∧ 2
true

julia> OR{Int}(1, 2, 3) == 1 ∨ 2 ∨ 3
true

julia> NOT(true) == ¬true
true
```


[docs-latest-img]: https://img.shields.io/badge/docs-latest-blue.svg
[docs-latest-url]: https://wookay.github.io/docs/LogicalElements.jl/

[actions-img]: https://github.com/wookay/LogicalElements.jl/actions/workflows/actions.yml/badge.svg
[actions-url]: https://github.com/wookay/LogicalElements.jl/actions
