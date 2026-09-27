module test_logicalelements_boolean

using Test
using LogicalElements: AND, OR, XOR, NOT, ∧, ∨, ⊕, ¬

Base.Bool(and::AND{Bool}) = all(identity, and.elements)
@test Bool(true ∧ true)
@test Bool(true ∧ true ∧ true)

Base.Bool(or::OR{Bool}) = any(identity, or.elements)
@test Bool(false ∨ false) === false
@test Bool(true ∨ false)
@test Bool(true ∨ false ∨ false)

Base.Bool(xor::XOR{Bool}) = Base.xor(xor.elements...)
@test Bool(true ⊕ true) === false
@test Bool(true ⊕ false)
@test Bool(false ⊕ true)
@test Bool(false ⊕ false) === false

import LogicalElements: NOT
NOT(and::AND{Bool}) = NOT(Bool(and))
NOT(or::OR{Bool}) = NOT(Bool(or))
function Base.Bool(not::NOT{Bool})
    if (isone ∘ length)(not.elements)
        !(only(not.elements))
    end
end
@test Bool(¬true) === false
@test Bool(NOT(true ∧ true)) === false
@test Bool(NOT(false ∨ false))

end # module test_logicalelements_boolean
