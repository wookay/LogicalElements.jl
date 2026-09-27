using LogicalElements
using .LogicalElements: AND, OR, XOR, NOT
using Documenter

makedocs(
    build = joinpath(@__DIR__, "local" in ARGS ? "build_local" : "build"),
    modules = [LogicalElements],
    clean = false,
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        assets = ["assets/custom.css"],
    ),
    sitename = "LogicalElements.jl 🧩",
    authors = "WooKyoung Noh",
    pages = Any[
        "Home" => "index.md",
        "macros" => "macros.md",
        "operators" => "operators.md",
    ],
)
