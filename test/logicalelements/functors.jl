module test_logicalelements_functors

using Test
using LogicalElements: AND, OR

and = AND{Function}(isone, isodd)
@test all(f -> f(1), and.elements)
@test length(and) == 2

and = AND{Function}(iszero, iseven)
@test all(f -> f(0), and.elements)

or = OR{Function}(isone, isodd)
@test any(f -> f(1), or.elements)

or = OR{Function}(iszero, iseven)
@test any(f -> f(0), or.elements)

end # module test_logicalelements_functors
