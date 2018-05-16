# Analyzing bank marketing data with scikit-learn

This repo contains 2 notebooks which demonstrate how one can approach a classification machine learning problem using `scikit-learn`. The models are trained on data on direct marketing campaigns (phone calls) of a Portuguese banking institution (Data source: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Bank+Marketing)). The classification goal is to predict if the client will subscribe a term deposit (variable y).

For the hands-on workshop, please use the notebook titled  [`2-classification-model-workshop-starter-code.ipynb`](https://github.com/davified/learn-scikit-learn/blob/master/notebooks/2-classification-model-workshop-starter-code.ipynb) in the `notebooks` directory. You can also refer to the [3-classification-model-workshop-solutions.ipynb](https://github.com/davified/learn-scikit-learn/blob/master/notebooks/3-classification-model-workshop-solutions.ipynb) if you'd like.

To see the complete process of approaching a machine learning problem, please see the [`full-analysis`](https://github.com/davified/learn-scikit-learn/blob/master/notebooks/full-analysis.ipynb) notebook. It illustrates the process of training, evaluating, tuning/optimizing and interpreting a logistic regression model

The [`4-comparing-models`](https://github.com/davified/learn-scikit-learn/blob/master/notebooks/4-comparing-models.ipynb) notebook demonstrates how you can follow a similar pattern for training a model using Logistic Regression Classifier, Naive Bayes Classifier, KNearest Neighbour Classifier, Decision Tree Classifier, Support Vector Machine Classifier, Random Forest Classifier. It also demonstrates how you can optimize a Random Forest Classifier using `GridSearchCV`

## Get started

1. Clone the repo and `cd` into the directory: `git clone github.com/davified/learn-scikit-learn && cd learn-scikit-learn`

2. Run `./bin/setup.sh` (read it before running!). Under the hood, this will:
	- Install anaconda (for python3)
	- Create a virtual environment
	- Install dependencies listed in `environment.yml`

3. To activate the virtual environment, run `source activate ml-101`

4. Start the notebook: `jupyter notebook` (if you're not familiar with jupyter notebook, it's just an IDE. You can refer to the [cheatsheet](https://www.cheatography.com/weidadeyue/cheat-sheets/jupyter-notebook/))

5. If prompted, select ml-101 as your jupyter kernel

6. At the end of the session, stop the Jupyter server by hitting Ctrl-C in your terminal. To exit the virtual environment, run `source deactivate`
