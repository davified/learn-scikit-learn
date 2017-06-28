# Analyzing bank marketing data with scikit-learn

This repo contains 2 notebooks which demonstrate how one can approach a classification machine learning problem using `scikit-learn`. The models are trained on data on direct marketing campaigns (phone calls) of a Portuguese banking institution (Data source: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Bank+Marketing)). The classification goal is to predict if the client will subscribe a term deposit (variable y).

For the hands-on workshop, please use the [`classification-model-workshop`](https://github.com/davified/learn-scikit-learn/blob/master/classification-model-workshop.ipynb) notebook. You can also refer to the [solutions](https://github.com/davified/learn-scikit-learn/blob/master/classification-model-workshop-solutions.ipynb) if you'd like.

To see the complete process of approaching a machine learning problem, please see the [`bank-data-model`](https://github.com/davified/learn-scikit-learn/blob/master/bank-data-model.ipynb) notebook. It illustrates the process of training, evaluating, tuning/optimizing and interpreting a logistic regression model

The [`comparing-models`](https://github.com/davified/learn-scikit-learn/blob/master/comparing-models.ipynb) notebook demonstrates how you can follow a similar pattern for training a model using Logistic Regression Classifier, Naive Bayes Classifier, KNearest Neighbour Classifier, Decision Tree Classifier, Support Vector Machine Classifier, Random Forest Classifier. It also demonstrates how you can optimize a Random Forest Classifier using `GridSearchCV`

## Get started

1. Clone the repo and `cd` into the directory: `git clone github.com/davified/learn-scikit-learn && cd learn-scikit-learn`

2. Run `./bin/setup.sh` (read it before running!). Under the hood, this will:

	- Install python

	- Create a virtualenv folder in repo to store the dependencies in the next bullet

	- Install dependencies
		- jupyter
		- pandas
		- numpy
		- matplotlib
		- sklearn

3. source .venv/bin/activate

4. Start the notebook: `jupyter notebook` (if you're not familiar with jupyter notebook, it's just an IDE. You can refer to the [cheatsheet](https://www.cheatography.com/weidadeyue/cheat-sheets/jupyter-notebook/))
