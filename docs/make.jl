using Documenter, Autonorm


makedocs(
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true",
        collapselevel = 2,
        # assets = ["assets/favicon.ico", "assets/extra_styles.css"],
    ),
    sitename = "Autonorm.jl",
    authors = "Mehmet Hakan Satman <mhsatman@gmail.com>, Emre Akadal <emreakadal@gmail.com>",
    pages = [
        "Main Functionality" => "main.md",
        "Datasets" => "datasets.md",
    ],
)

deploydocs(repo = "github.com/jbytecode/Autonorm.jl")