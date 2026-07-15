"""
    diagnosticplots(pd::Distribution, y::AbstractVector{<:Real})

Diagnostic plots
"""
function diagnosticplots(pd::Distribution, y::AbstractVector{<:Real})

    f1 = probplot(pd, y)
    f2 = qqplot(pd, y)
    f3 = histplot(pd, y)
    f4 = returnlevelplot(pd, y)

    return gridstack([f1 f2; f3 f4])
end
