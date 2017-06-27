# Analyzing bank marketing data with scikit-learn

This repo contains 2 notebooks which demonstrate how one can approach a classification machine learning problem using `scikit-learn`. The models are trained on data on direct marketing campaigns (phone calls) of a Portuguese banking institution (Data source: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Bank+Marketing)). The classification goal is to predict if the client will subscribe a term deposit (variable y).

The first notebook ([`bank-data-model`](https://github.com/davified/learn-scikit-learn/blob/master/bank-data-model.ipynb)) illustrates the process of training, evaluating, tuning/optimizing and interpreting a logistic regression model

The second notebook ([`comparing-models`](https://github.com/davified/learn-scikit-learn/blob/master/comparing-models.ipynb)) demonstrates how you can follow a similar pattern for training a model using Logistic Regression Classifier, Naive Bayes Classifier, KNearest Neighbour Classifier, Decision Tree Classifier, Support Vector Machine Classifier, Random Forest Classifier. It also demonstrates how you can optimize a Random Forest Classifier using `GridSearchCV`

## Get started

1. Clone the repo and `cd` into the directory: `git clone github.com/davified/learn-scikit-learn && cd learn-scikit-learn`

2. Run `./bin/setup.sh`. Under the hood, this will:

	- Install python

	- Install virtualenv

	- Create virtualenv folder in repo

	- Install dependencies
		- jupyter
		- pandas
		- numpy
		- matplotlib
		- sklearn

3. source .venv/bin/activate

4. Start the notebook: `jupyter notebook`
