using Documenter
using KuMoMinCostFlow
using DocThemeIndigo

indigo = DocThemeIndigo.install(Configurations)

makedocs(;
    modules = [KuMoMinCostFlow],
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        canonical="https://Azzaare.github.io/KuMoMinCostFlow.jl",
        assets=String[indigo],
    ),
    pages = [
        "Home" => "index.md",
    ],
    repo = "https://github.com/Azzaare/KuMoMinCostFlow.jl",
    sitename = "KuMoMinCostFlow.jl",
)

deploydocs(; repo = "https://github.com/Azzaare/KuMoMinCostFlow.jl")
