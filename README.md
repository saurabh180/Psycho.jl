<p align="center"><a href=https://neuropsychology.github.io/Psycho.jl/latest/><img src="docs/src/assets/logo_Psycho.jl.png" width="500" align="center" alt="psycho logo julia package"></a></p>

*<h4 align="center">The Julia Toolbox for Psychological Science</h2>*

# Psycho.jl
[![Build Status](https://travis-ci.org/neuropsychology/Psycho.jl.svg?branch=master)](https://travis-ci.org/neuropsychology/Psycho.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/313hx3rmmc1swckg?svg=true)](https://ci.appveyor.com/project/DominiqueMakowski/psycho-jl)
[![](https://img.shields.io/badge/docs-latest-blue.svg)](https://neuropsychology.github.io/Psycho.jl/latest/)
[![codecov](https://codecov.io/gh/neuropsychology/Psycho.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/neuropsychology/Psycho.jl)



# Goal

***"From Julia to Manuscript"***

`Psycho`'s primary goal is to fill the gap between Julia's output and the formatted result description of your manuscript, with the use of **best practices** guidelines, ensuring standardization and quality of results reporting.
It also provides useful tools and functions for psychologists, neuropsychologists and neuroscientists for their everyday data analyses.

# Contribute

`Psycho.jl` **is a young package in need of affection**. You can easily hop aboard the developpment of this open-source software and improve psychological science by doing the following:

- Create or check existing <a href=https://github.com/neuropsychology/Psycho.jl/issues><img src="docs/src/assets/issue_bug.png" height="25"></a> issues to report, replicate, understand or solve some bugs.
- Create or check existing <a href=https://github.com/neuropsychology/Psycho.jl/issues><img src="docs/src/assets/issue_featureidea.png" height="25"></a> issues to suggest or discuss a new feature.
- Check existing <a href=https://github.com/neuropsychology/Psycho.jl/issues><img src="docs/src/assets/issue_help.png" height="25"></a> issues to see things that we'd like to implement, but where help is needed to do it.
- Check existing <a href=https://github.com/neuropsychology/Psycho.jl/issues><img src="docs/src/assets/issue_opinion.png" height="25"></a> issues to give your opinion and participate in package's design discussions.

Don't be shy, try to code and submit a pull request (PR). Even if unperfect, we will help you make it great! All contributors will be very graciously rewarded someday :smirk:.


# Installation

```
pkg> add https://github.com/neuropsychology/Psycho.jl.git
```


# Documentation

- Reports: Interpret and report your models
- Effect Sizes: Rules of thumb and interprettation
- Signal Detection Theory: SDT's related indices



# Examples

## Report all the things <a href=https://neuropsychology.github.io/Psycho.jl/latest/><img src="https://www.memecreator.org/static/images/templates/2776.jpg" height="100"></a>

```julia
# Simulate some data
data = simulate_data_correlation([[0.3], [0.1]])

# Standardize the results
standardize!(data)

# Describe the data
report(data)
```
```
The data contains 200 observations of the following variables:
  - y (Mean = 0 ± 1.0 [-2.52, 2.92])
  - Var1 (Mean = 0 ± 1.0 [-2.07, 3.05])
  - Group (1LV, 50.0%; 2QD, 50.0%)
```

## Signal Detection Theory (SDT)

```julia
sdt_indices(hit=6, fa=7, miss=8, cr=9)
```
```
Dict{String,Float64} with 5 entries:
  "bpp"    => -0.0711812
  "c"      => 0.191778
  "aprime" => 0.527793
  "dprime" => -0.0235319
  "beta"   => 0.995497
```
