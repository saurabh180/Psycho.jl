module Psycho

export
    standardize,
    standardize!,
    perfectNormal,

    r2_tjur,
    datagrid,

    Rules,
    interpret,
    interpret_p,
    format_p,
    interpret_d,
    interpret_odds,

    simulate_groupnames,
    simulate_coefs_correlation,
    simulate_data_correlation,
    simulate_data_logistic,

    sdt_indices,

    Report,
    report,
    table,
    values


include("core/standardize.jl")
include("core/perfectNormal.jl")

include("modelling/R2.jl")
include("modelling/datagrid.jl")

include("interpret/interpret.jl")
include("interpret/pvalue.jl")
include("interpret/cohen_d.jl")
include("interpret/odds.jl")

include("simulate/data_groups.jl")
include("simulate/data_correlation.jl")
include("simulate/data_logistic.jl")

include("sdt/GLM.jl")
include("sdt/basics.jl")

include("report/report.jl")
include("report/Vector.jl")
include("report/DataFrame.jl")
include("report/LM.jl")
include("report/GLM.jl")

end # module
