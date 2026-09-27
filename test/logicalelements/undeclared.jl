module test_logicalelements_undeclared

using Test

if VERSION > v"1.11"
    warn_msg = if VERSION >= v"1.12-beta"
        "WARNING: Imported binding LogicalElements.^ was undeclared at import time during import to test_logicalelements_undeclared.\n"
    else
        "WARNING: could not import LogicalElements.^ into test_logicalelements_undeclared"
    end
    @test_warn warn_msg            @eval(using LogicalElements: ^) # U+005E  ^
else
    @test_throws UndefVarError(:^) @eval(using LogicalElements: ^) # U+005E  ^
end # if

using LogicalElements: ∧  # U+2227  ∧ \wedge

end # module test_logicalelements_undeclared
