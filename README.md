# iris-data-generation

## What is it
This small repo describes how to generate iris-like data, based on a Gaussian Mixture Model fitted on the Iris dataset

The idea is to be able to generate many samples similar to iris data, as such dataset is reduced (150 data points). 

Here below shows the comparison of the original Iris dataset ('x', '*', and '+' symbols) with the generated samples, based on a Bayesian Gaussian Mixture Model probability distribution function [using the scikit-learn implementation](https://scikit-learn.org/stable/modules/generated/sklearn.mixture.BayesianGaussianMixture.html#sklearn.mixture.BayesianGaussianMixture). 

![Iris generated](images/iris_generated.png "Iris generated")

As stated in the [Scikit-Learn documentation](https://scikit-learn.org/stable/modules/generated/sklearn.mixture.BayesianGaussianMixture.html#sklearn.mixture.BayesianGaussianMixture), the Bayesian Gaussian Mixture Model is particularly well adapted to mimic *blob-like*, *multi-dimensional*, distributions. The variational Bayesian algorithm which fits the GMM probability distribution function allows to optimize the number of gaussian components needed (in contrast, [in the classical, non-variational GMM](https://scikit-learn.org/stable/modules/generated/sklearn.mixture.GaussianMixture.html#sklearn.mixture.GaussianMixture), one has to input the number of such components).

## How to use

The view is created in notebook `explore.ipynb`, using a data generation function available in the `module.py` file. 

To reproduce this, you can clone the repo:

`git clone git@github.com:pdemeulenaer/iris-data-generation.git`

Then build the python virtual environment `venv`:

`python3 -m venv venv`

Then install the packages using the `Makefile` command:

`make install`

Then you can run the notebook in your IDE.
