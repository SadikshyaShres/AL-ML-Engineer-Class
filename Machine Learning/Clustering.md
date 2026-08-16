# Unsupervised Learning

## 1. What is Unsupervised Learning?

**Unsupervised Learning** is a type of machine learning where the model learns patterns, structures, or relationships from **unlabeled data**.

Unlike supervised learning, there is **no target or output variable** provided to the model.

### Example

Suppose we have customer data:

| Customer | Age | Income | Spending Score |
| -------- | --: | -----: | -------------: |
| A        |  22 |    30K |             80 |
| B        |  25 |    35K |             75 |
| C        |  45 |    80K |             30 |
| D        |  50 |    85K |             25 |

There is no predefined category such as "High Value Customer" or "Low Value Customer."

An unsupervised learning algorithm can discover groups of similar customers automatically.

---

## 2. How Unsupervised Learning Works

The general process is:

1. Collect unlabeled data.
2. Clean and preprocess the data.
3. Select relevant features.
4. Apply an unsupervised learning algorithm.
5. Discover hidden patterns or groups.
6. Interpret and evaluate the results.

```text
Unlabeled Data
      ↓
Data Preprocessing
      ↓
Feature Selection
      ↓
Unsupervised Algorithm
      ↓
Patterns / Groups / Relationships
      ↓
Business or Data Insights
```

---

## 3. Main Types of Unsupervised Learning

The major techniques are:

### 1. Clustering

Groups similar observations together.

**Examples:**

* K-Means Clustering
* Hierarchical Clustering
* DBSCAN

### 2. Dimensionality Reduction

Reduces the number of features while preserving important information.

**Examples:**

* PCA
* t-SNE
* UMAP

### 3. Association Rule Learning

Discovers relationships between variables or items.

**Examples:**

* Apriori
* FP-Growth

### 4. Anomaly Detection

Identifies unusual or abnormal observations.

**Examples:**

* Isolation Forest
* DBSCAN
* One-Class SVM

---

# 4. Clustering

**Clustering** is the process of dividing data into groups called **clusters**.

Objects within the same cluster should be similar, while objects in different clusters should be relatively different.

### Example

A company can use clustering to divide customers into:

* High-value customers
* Medium-value customers
* Low-value customers

This can help with customer segmentation and targeted marketing.

---

# 5. K-Means Clustering

**K-Means** is one of the most popular clustering algorithms.

It divides the data into a predefined number of clusters, represented by **K**.

### Steps of K-Means

1. Choose the number of clusters, `K`.
2. Randomly initialize `K` centroids.
3. Assign each data point to the nearest centroid.
4. Calculate new centroids.
5. Reassign data points based on the new centroids.
6. Repeat until the centroids stabilize.

### Objective

K-Means tries to minimize the **Within-Cluster Sum of Squares (WCSS)**:

$$
WCSS = \sum_{k=1}^{K} \sum_{x_i \in C_k} ||x_i-\mu_k||^2
$$

Where:

* $K$ = number of clusters
* $C_k$ = cluster $k$
* $x_i$ = data point
* $\mu_k$ = centroid of cluster $k$

---

# 6. Choosing the Value of K

One common method for selecting `K` is the **Elbow Method**.

The algorithm is run with different values of `K`, and WCSS is calculated for each value.

The point where the decrease in WCSS starts slowing down is called the **elbow point**.

```text
WCSS
 |
 |\
 | \
 |  \
 |   \
 |    \__
 |       \___
 |______________
       K
```

The elbow point provides a possible value for `K`.

---

# 7. Hierarchical Clustering

**Hierarchical Clustering** creates a hierarchy of clusters.

It is commonly divided into:

### Agglomerative Clustering

A **bottom-up** approach.

1. Start with each observation as its own cluster.
2. Find the two closest clusters.
3. Merge them.
4. Continue until all observations belong to one cluster.

### Dendrogram

A **dendrogram** is a tree-like diagram used to visualize hierarchical clustering.

---

# 8. DBSCAN

**DBSCAN** stands for **Density-Based Spatial Clustering of Applications with Noise**.

It groups data points based on their density.

### Advantages

* Can find clusters with irregular shapes.
* Can identify noise and outliers.
* Does not require the number of clusters to be specified beforehand.

### Important Parameters

* `eps` — maximum distance between neighboring points.
* `min_samples` — minimum number of points required to form a dense region.

---

# 9. Dimensionality Reduction

**Dimensionality Reduction** reduces the number of features in a dataset while attempting to preserve important information.

For example:

```text
100 Features
     ↓
Dimensionality Reduction
     ↓
2 or 3 Features
```

It is useful for:

* Data visualization
* Removing redundant features
* Reducing computational complexity
* Handling high-dimensional datasets

---

# 10. Principal Component Analysis (PCA)

**PCA** is a popular dimensionality reduction technique.

It transforms the original features into a smaller number of new variables called **principal components**.

The first principal component captures the maximum possible variance in the data.

### Key Idea

```text
Original Features
       ↓
       PCA
       ↓
Principal Components
       ↓
Reduced Dataset
```

For example:

```text
20 Features → PCA → 2 Principal Components
```

PCA is commonly used to visualize high-dimensional datasets.

---

# 11. Association Rule Learning

Association rule learning discovers relationships between items in a dataset.

It is commonly used in **market basket analysis**.

### Example

A supermarket may discover:

```text
Customers who buy Bread
        +
Customers who buy Butter
        ↓
Often buy Milk
```

This information can be used for:

* Product recommendations
* Store layout
* Cross-selling
* Marketing campaigns

---

# 12. Apriori Algorithm

**Apriori** is an association rule learning algorithm.

It identifies frequent itemsets and generates association rules.

A common rule is:

$$
Bread \rightarrow Butter
$$

This means customers who purchase bread may also be likely to purchase butter.

---

# 13. Important Association Rule Metrics

### Support

Support measures how frequently an itemset appears in the dataset.

$$
Support(A) =
\frac{\text{Transactions containing A}}
{\text{Total Transactions}}
$$

### Confidence

Confidence measures how often `B` occurs when `A` occurs.

$$
Confidence(A \rightarrow B)
===========================

\frac{Support(A \cup B)}
{Support(A)}
$$

### Lift

Lift measures how much more likely `B` is to occur when `A` occurs compared with its normal occurrence.

$$
Lift(A \rightarrow B)
=====================

\frac{Confidence(A \rightarrow B)}
{Support(B)}
$$

### Interpretation of Lift

* **Lift > 1** → Positive association
* **Lift = 1** → No association
* **Lift < 1** → Negative association

---

# 14. Anomaly Detection

**Anomaly Detection** identifies observations that are significantly different from the majority of the data.

Anomalies are also called:

* Outliers
* Abnormal observations
* Novel observations

### Examples

* Credit card fraud
* Network attacks
* Unusual customer behavior
* Manufacturing defects
* Unusual financial transactions

---

# 15. Isolation Forest

**Isolation Forest** is an unsupervised anomaly detection algorithm.

The main idea is that anomalies are easier to isolate than normal observations.

Anomalous points generally require fewer random splits to isolate.

---

# 16. Supervised vs Unsupervised Learning

| Feature         | Supervised Learning        | Unsupervised Learning |
| --------------- | -------------------------- | --------------------- |
| Data            | Labeled                    | Unlabeled             |
| Target Variable | Required                   | Not required          |
| Main Goal       | Predict output             | Discover patterns     |
| Examples        | Classification, Regression | Clustering, PCA       |
| Evaluation      | Usually easier             | Often more difficult  |
| Example         | Predict customer churn     | Segment customers     |

---

# 17. Advantages of Unsupervised Learning

* Works with unlabeled data.
* Helps discover hidden patterns.
* Useful for customer segmentation.
* Can reduce dimensionality.
* Helps identify anomalies.
* Useful for exploratory data analysis.
* Can reveal previously unknown relationships.

---

# 18. Limitations of Unsupervised Learning

* Results can be difficult to interpret.
* Choosing the correct algorithm can be challenging.
* Some algorithms require parameters such as the number of clusters.
* Sensitive to data quality and feature scaling.
* Different algorithms may produce different results.
* There may not be a clearly defined correct answer.
* Outliers can negatively affect some algorithms.

---

# 19. Applications of Unsupervised Learning

### Marketing

* Customer segmentation
* Market segmentation
* Recommendation systems
* Customer behavior analysis

### Finance

* Fraud detection
* Risk analysis
* Transaction analysis

### Healthcare

* Patient grouping
* Disease pattern discovery
* Medical image analysis

### E-Commerce

* Product recommendations
* Customer segmentation
* Shopping behavior analysis

### Cybersecurity

* Intrusion detection
* Unusual activity detection
* Network behavior analysis

---

# 20. Example: Customer Segmentation

A company has customer information such as:

* Age
* Annual Income
* Spending Score
* Purchase Frequency

There is no predefined customer category.

Using **K-Means Clustering**, the company can identify groups such as:

```text
Cluster 1 → High Income, High Spending
Cluster 2 → High Income, Low Spending
Cluster 3 → Low Income, High Spending
Cluster 4 → Low Income, Low Spending
```

The marketing team can then create different strategies for each segment.

---

# 21. Common Unsupervised Learning Algorithms

| Technique                | Algorithm               | Main Purpose                |
| ------------------------ | ----------------------- | --------------------------- |
| Clustering               | K-Means                 | Customer/group segmentation |
| Clustering               | Hierarchical Clustering | Hierarchical grouping       |
| Clustering               | DBSCAN                  | Density-based clustering    |
| Dimensionality Reduction | PCA                     | Reduce features             |
| Dimensionality Reduction | t-SNE                   | Visualization               |
| Association              | Apriori                 | Find item relationships     |
| Association              | FP-Growth               | Frequent itemsets           |
| Anomaly Detection        | Isolation Forest        | Detect anomalies            |
| Anomaly Detection        | One-Class SVM           | Detect unusual observations |

---

# 22. Key Points to Remember

* **Unsupervised learning works with unlabeled data.**
* Its main goal is to **discover hidden patterns and structures**.
* **Clustering** groups similar observations.
* **K-Means** is a popular clustering algorithm.
* **Hierarchical Clustering** creates a hierarchy of clusters.
* **DBSCAN** uses data density and can identify noise.
* **PCA** reduces the number of dimensions.
* **Association Rules** discover relationships between items.
* **Anomaly Detection** identifies unusual observations.
* Unsupervised learning is widely used in **customer segmentation, recommendation systems, fraud detection, and exploratory data analysis**.
