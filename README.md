# Artificial Intelligence

Repository containing exercises, implementations, and practical work developed during my academic training in **Artificial Intelligence** at the **Universidad Autónoma de San Luis Potosí (UASLP)**.

The coursework explores different approaches to Artificial Intelligence, ranging from **symbolic AI and logic programming** to supervised Machine Learning algorithms for classification and regression.

The repository includes practical work with **Prolog, K-Nearest Neighbors (KNN), Decision Trees, Random Forest, and Gradient Boosting**, providing experience with both rule-based reasoning and data-driven predictive models.

---

## Course Overview

Artificial Intelligence includes multiple approaches for building systems capable of solving problems, making predictions, representing knowledge, and performing automated reasoning.

The material in this repository covers two major perspectives:

```text
                  Artificial Intelligence
                           |
             +-------------+-------------+
             |                           |
             v                           v
        Symbolic AI                Machine Learning
             |                           |
             v                           v
     Knowledge & Rules            Learning from Data
             |                           |
             v                           v
          Prolog                 Classification
                                  Regression
```

This combination provides an introduction to both **knowledge-driven** and **data-driven** Artificial Intelligence.

---

# Topics Covered

The main topics represented in the repository include:

- Artificial Intelligence fundamentals
- Symbolic Artificial Intelligence
- Logic programming
- Knowledge representation
- Facts and rules
- Automated inference
- Prolog
- Supervised Machine Learning
- Classification
- Regression
- K-Nearest Neighbors
- Decision Trees
- Random Forest
- Gradient Boosting
- Model training
- Model prediction
- Model evaluation

---

# Symbolic Artificial Intelligence

One part of the coursework focuses on **Symbolic AI**, where knowledge is explicitly represented through facts, relationships, and logical rules.

Unlike Machine Learning models that learn patterns from numerical data, symbolic systems operate over explicitly defined knowledge.

A simplified representation is:

```text
Knowledge
   |
   v
Facts + Rules
   |
   v
Inference Engine
   |
   v
Logical Conclusions
```

This approach introduces fundamental concepts in:

- Knowledge representation
- Logical reasoning
- Rule-based systems
- Automated inference

---

# Logic Programming with Prolog

The repository includes practical work using **Prolog**, a logic programming language designed around facts, rules, and queries.

Instead of explicitly defining every computational step, a Prolog program defines relationships and allows the inference engine to determine whether particular statements can be derived from the available knowledge.

A simple conceptual example is:

```prolog
parent(person_a, person_b).
parent(person_b, person_c).

grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
```

The system can then answer queries based on the relationships encoded in the knowledge base.

---

## Family Relationship Knowledge Base

One of the Prolog exercises models **family relationships using facts and inference rules**.

The knowledge base represents direct relationships and derives additional relationships logically.

Conceptually:

```text
Family Facts
     |
     v
Parent Relationships
     |
     v
Inference Rules
     |
     +------------------+
     |                  |
     v                  v
 Grandparents        Siblings
     |                  |
     +---------+--------+
               |
               v
        Extended Relations
```

Relationships explored include concepts such as:

- Parents
- Children
- Grandparents
- Siblings
- Cousins
- In-law relationships

This exercise demonstrates how a knowledge base can derive information that is not necessarily stored directly as an individual fact.

---

# Knowledge Representation

The Prolog exercises introduce the distinction between **facts**, **rules**, and **queries**.

### Facts

Facts represent information known by the system.

```prolog
parent(a, b).
```

### Rules

Rules describe logical relationships that can be inferred from existing information.

```prolog
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
```

### Queries

Queries request information from the knowledge base.

```prolog
grandparent(X, Z).
```

The inference engine searches for combinations of facts and rules that satisfy the requested relationship.

---

# From Symbolic AI to Machine Learning

The coursework also explores Artificial Intelligence from a data-driven perspective.

```text
Traditional Symbolic AI
        |
        | Facts + Rules
        v
Logical Inference


Machine Learning
        |
        | Historical Data
        v
Learned Model
        |
        v
Prediction
```

This distinction is important because both approaches attempt to build intelligent systems, but they represent knowledge differently.

The Machine Learning section of the coursework introduces algorithms capable of learning predictive relationships directly from data.

---

# Supervised Machine Learning

Supervised Machine Learning uses labeled observations to learn a relationship between input variables and a target.

```text
Labeled Dataset
      |
      v
Feature Matrix (X)
      |
      v
Machine Learning Algorithm
      |
      v
Trained Model
      |
      v
Predictions
```

Two major supervised-learning problems are considered:

```text
Supervised Learning
        |
   +----+----+
   |         |
   v         v
Classification Regression
   |         |
   v         v
 Category   Numerical Value
```

---

# K-Nearest Neighbors

The repository includes work with **K-Nearest Neighbors (KNN)**.

KNN predicts an observation based on nearby examples in the feature space.

Conceptually:

```text
New Observation
       |
       v
Calculate Distances
       |
       v
Find K Nearest Samples
       |
       v
Aggregate Neighbor Information
       |
       v
Prediction
```

The algorithm introduces important concepts such as:

- Feature space
- Distance between observations
- Neighborhood size (`k`)
- Classification based on nearby observations
- Sensitivity to feature scaling

KNN provides a useful introduction to instance-based Machine Learning.

---

# Decision Trees

The repository also explores **Decision Trees**.

Decision Trees recursively divide the feature space using decision rules.

```text
                   Root Node
                       |
              +--------+--------+
              |                 |
         Condition True    Condition False
              |                 |
              v                 v
         Decision Node     Decision Node
          /       \         /       \
         v         v       v         v
       Leaf      Leaf    Leaf      Leaf
```

The resulting structure provides an interpretable sequence of decisions leading to a prediction.

---

## Decision Tree Classification

For classification problems, terminal nodes represent predicted categories.

```text
Features
   |
   v
Decision Rules
   |
   v
Decision Tree
   |
   v
Predicted Class
```

This introduces the use of tree-based algorithms for categorical prediction.

---

## Decision Tree Regression

Decision Trees can also predict continuous numerical values.

```text
Features
   |
   v
Decision Rules
   |
   v
Regression Tree
   |
   v
Numerical Prediction
```

Working with both classification and regression demonstrates how the same general tree architecture can be adapted to different supervised-learning problems.

---

# Ensemble Learning

The coursework progresses from individual Decision Trees toward **ensemble-learning methods**.

Instead of relying on a single model, ensemble methods combine multiple learners.

```text
                    Dataset
                       |
              +--------+--------+
              |                 |
              v                 v
        Multiple Trees     Sequential Trees
              |                 |
              v                 v
        Random Forest     Gradient Boosting
```

These approaches can improve predictive performance and model robustness.

---

# Random Forest

**Random Forest** combines predictions from multiple Decision Trees.

A simplified representation is:

```text
                  Input Data
                      |
       +--------------+--------------+
       |              |              |
       v              v              v
    Tree 1          Tree 2         Tree N
       |              |              |
       +--------------+--------------+
                      |
                      v
              Aggregate Results
                      |
                      v
                  Prediction
```

Random Forest introduces concepts such as:

- Ensemble learning
- Multiple Decision Trees
- Randomized training
- Aggregation of predictions
- Classification
- Regression

The method demonstrates how combining multiple models can produce more robust predictions than relying on a single tree.

---

# Gradient Boosting

The repository also includes work with **Gradient Boosting**.

Unlike Random Forest, where multiple trees contribute through aggregation, Gradient Boosting builds models sequentially.

Each new model attempts to improve the errors made by the previous ensemble.

```text
Initial Model
      |
      v
Calculate Errors
      |
      v
Train New Model
      |
      v
Correct Previous Errors
      |
      v
Updated Ensemble
      |
      v
Repeat
```

Conceptually:

```text
Model 1
   |
   v
Residual Errors
   |
   v
Model 2
   |
   v
Residual Errors
   |
   v
Model 3
   |
   v
Final Prediction
```

This introduces the concept of **boosting**, where relatively simple learners are combined sequentially to create a stronger predictive model.

---

# Random Forest vs. Gradient Boosting

The course provides exposure to two different ensemble-learning strategies:

| Random Forest | Gradient Boosting |
|---|---|
| Multiple Decision Trees | Multiple Decision Trees |
| Trees contribute to an aggregated prediction | Trees are trained sequentially |
| Emphasizes model diversity | Emphasizes correction of previous errors |
| Bagging-based approach | Boosting-based approach |
| Classification and regression | Classification and regression |

Understanding these differences provides a foundation for more advanced tree-based Machine Learning methods.

---

# Artificial Intelligence Workflow

The practical Machine Learning exercises follow the general structure:

```text
Dataset
   |
   v
Data Preparation
   |
   v
Features / Target
   |
   v
Model Training
   |
   +-----------------------+
   |           |           |
   v           v           v
  KNN     Decision Tree   Ensembles
                           /     \
                          v       v
                    Random     Gradient
                    Forest     Boosting
                          \       /
                           v     v
                         Prediction
                             |
                             v
                         Evaluation
```

This demonstrates how different algorithms can be applied to the same general supervised-learning workflow.

---

# Symbolic AI vs. Machine Learning

One of the most important conceptual distinctions represented by the coursework is the difference between explicitly programmed knowledge and learned patterns.

| Symbolic AI | Machine Learning |
|---|---|
| Knowledge represented explicitly | Knowledge learned from data |
| Facts and rules | Features and observations |
| Logical inference | Statistical learning |
| Prolog | Predictive models |
| Explainable relationships | Learned relationships |
| Queries | Predictions |

Both approaches represent different ways of constructing intelligent computational systems.

---

# Skills Developed

Through the exercises in this repository, the course develops practical knowledge in:

- Artificial Intelligence
- Symbolic AI
- Logic programming
- Prolog
- Knowledge representation
- Rule-based systems
- Logical inference
- Supervised Machine Learning
- Classification
- Regression
- K-Nearest Neighbors
- Decision Trees
- Random Forest
- Gradient Boosting
- Ensemble learning
- Predictive modeling
- Model evaluation
- Python-based Machine Learning

---

# Relationship with Data Science

The Artificial Intelligence course complements other areas of my Data Science training.

```text
                   Data Science & AI
                          |
       +------------------+------------------+
       |                  |                  |
       v                  v                  v
Artificial Intelligence Data Mining      Deep Learning
       |                  |                  |
       v                  v                  v
ML + Symbolic AI      Data Analysis      Neural Networks
       |
       +--------------------------------------+
                          |
                          v
                  Applied Data Science
```

The Artificial Intelligence component provides foundations in both traditional symbolic reasoning and supervised Machine Learning.

Other coursework in the broader training program covers:

- Data Mining
- Deep Learning
- Convolutional Neural Networks
- Graph Theory
- NoSQL Databases
- Statistical analysis
- Data preprocessing

---

# Academic Context

This repository contains coursework developed as part of my specialized training in:

**Data Science & Artificial Intelligence**  
**Universidad Autónoma de San Luis Potosí (UASLP)**  
San Luis Potosí, Mexico

The complete training program comprised **195 hours** and included supervised and unsupervised Artificial Intelligence, Data Mining, Deep Learning, Graph Theory, and practical processing of scientific datasets using Python-based tools.

---

# Repository Purpose

The purpose of this repository is to preserve and document practical Artificial Intelligence exercises completed during my academic training.

The repository demonstrates a progression from explicit knowledge representation to predictive Machine Learning:

```text
Artificial Intelligence
        |
        +-------------------+
        |                   |
        v                   v
   Symbolic AI        Machine Learning
        |                   |
        v                   v
      Prolog               KNN
        |                   |
        v                   v
 Facts & Rules        Decision Trees
        |                   |
        v                   v
   Inference          Random Forest
                            |
                            v
                     Gradient Boosting
```

Together, these exercises provide foundations for understanding how intelligent systems can be constructed using both **logical reasoning and learning from data**.

---

# Author

**José Luis Romero Vázquez**

Electronics Engineer and Data Scientist with international graduate education in Electronic Engineering, Telecommunications, and Computer Networks, with applied experience in Machine Learning, time-series forecasting, IoT analytics, research, and software development.

**LinkedIn:**  
https://www.linkedin.com/in/jose-luis-romero-vazquez-486569209

**GitHub:**  
https://github.com/0311869uaslp-a11y
