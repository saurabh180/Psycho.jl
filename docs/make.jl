using Documenter, Psycho, DataFrames, GLM

makedocs(
    format = :html,
    sitename = "Psycho.jl",
    authors="Dominique Makowski",
    analytics="UA-97457476-4",
    modules = [Psycho, DataFrames, GLM]
)

deploydocs(
    repo = "github.com/neuropsychology/Psycho.jl.git",
    target = "build",
    julia  = "1.0",
    osname = "linux",
    deps   = nothing,
    make   = nothing
)