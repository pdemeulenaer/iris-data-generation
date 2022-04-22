# iris-data-generation

## What is it
This small repo describes how to generate iris-like data, based on a Gaussian Mixture Model fitted on the Iris dataset

The idea is to be able to generate many samples similar to iris data, as such dataset is reduced (150 data points). 

Here shows the comparison of the original Iris dataset ('x', '*', and '+' symbols) with the generated samples, based on a Bayesian Gaussian Mixture Model probability distribution function [using the scikit-learn implementation](https://scikit-learn.org/stable/modules/generated/sklearn.mixture.BayesianGaussianMixture.html#sklearn.mixture.BayesianGaussianMixture)

![Iris generated](images/iris_generated.png "Iris generated")

## How to use

The view is created in notebook `explore.ipynb`, using a data generation function available in the `module.py` file. 

To reproduce this, you can clone the repo:

`git clone git@github.com:pdemeulenaer/iris-data-generation.git`

Then build the python virtual environment `venv`:

`python3 -m venv venv`

Then install the packages using the `Makefile` command:

`make install`

Then you can run the notebook in your IDE.
