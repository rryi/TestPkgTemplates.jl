using TestPkgTemplates
using Documenter

DocMeta.setdocmeta!(TestPkgTemplates, :DocTestSetup, :(using TestPkgTemplates); recursive=true)

makedocs(;
    modules=[TestPkgTemplates],
    authors="Robert Rudolph",
    repo="https://github.com/rryi/TestPkgTemplates.jl/blob/{commit}{path}#{line}",
    sitename="TestPkgTemplates.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://rryi.github.io/TestPkgTemplates.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/rryi/TestPkgTemplates.jl",
)
