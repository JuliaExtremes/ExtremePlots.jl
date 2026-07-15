"""
    diagnosticplots(fm::AbstractFittedExtremeValueModel)

Diagnostic plots
"""
function diagnosticplots(pd::Distribution, y::AbstractVector{<:Real})

    f1 = probplot(pd)
    f2 = qqplot(pd)
    f3 = histplot(pd)
    f4 = Gadfly.plot()

    return gridstack([f1 f2; f3 f4])
end
