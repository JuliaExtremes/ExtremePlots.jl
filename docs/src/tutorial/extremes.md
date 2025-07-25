# Diagnostic plots

This page demonstrates how to use the diagnostic plots from the ExtremePlots.jl package with the data structures provided by Extremes.jl.

## Setup

```@setup extremes
using Random
Random.seed!(12345)  # For reproducible examples
import Cairo, Fontconfig
```

Load the required packages:
```@example extremes
using Distributions, Extremes, ExtremePlots, Gadfly
```

Simulate data from a Generalized Extreme Value (GEV) distribution:
```@example extremes
pd = GeneralizedExtremeValue(0,1,0)
y = rand(pd, 300);
nothing #hide
```

Fit the block maxima model by maximum likelihood:
```@example extremes
fm = gevfit(y)
```

## Histogram Plot

Displays a histogram of the data with the distribution overlay.

```@example extremes
ExtremePlots.histplot(fm)
```

## Probability-Probability (PP) plot

Compares empirical and model probabilities.

```@example extremes
ExtremePlots.probplot(fm)
```

## Quantile-Quantile (QQ) plot

Compares empirical and model quantiles.
```@example extremes
ExtremePlots.qqplot(fm)
```

## Return level plot

Displays empirical and model-predicted return levels as a function of the return period.
```@example extremes
ExtremePlots.returnlevelplot(fm)
```

## Panel of diagnostic plots

Compiles in a panel the diagnostic plots

```@example extremes
Gadfly.set_default_plot_size(21cm ,16cm)
ExtremePlots.diagnosticplots(fm)
```