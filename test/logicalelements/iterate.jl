module test_logicalelements_iterate

using Test
using LogicalElements: AND

vals = []
for el in AND(1, 2, 3)
    push!(vals, el)
end

@test vals == [1, 2, 3]

end # module test_logicalelements_iterate
