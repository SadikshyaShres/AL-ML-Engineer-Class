# Statistics 
Statistics is a branch of mathematics focused on the collection, analysis, and interpretation and presentation of numerical data 
## Key Concept 
- Data Collection: Gathering raw numbers, measurements, or survey answers from a group.
- Analysis: Organizing and summarizing information using tools like averages (mean, median, mode) and spread (range, standard deviation).
- Interpretation: Explaining what the numbers mean and using sample groups to make smart guesses or predictions about a larger population.
## Types of Statistics 
- Descriptive Statistics: Summarizes or describes the basic features of a specific data set (e.g., a graph of test scores).
- Inferential Statistics: Uses sample data to test ideas and draw conclusions or predictions about a wider group (e.g., predicting an election outcome from a small poll).
### Example
A company surveys 500 out of its 50,000 customers about satisfaction.
- Descriptive: "The average satisfaction score among the 500 surveyed customers is 7.8/10."
- Inferential: "Based on this sample, we estimate the true average satisfaction across all 50,000 customers is between 7.5 and 8.1, with 95% confidence."
-----------------------------------------------------------------------------------------------------------------------------
## Introduction to Basic Statistics Terms:
1. Population: The entire group you want to study/draw conclusions about (e.g., all customers of a company)
2. Sample: A subset of the population actually collected/observed
3. Variable: A characteristic or attribute that can be measured and varies between subjects (e.g., age, income)
4. Data: The values collected for variables. "Data" is technically plural (singular = "datum"), though in modern/casual usage it's often treated as singular ("the data is..."). In formal academic writing, "the data are..." is correct.
5. Experiment: A controlled process/study designed to collect data and test a hypothesis
6. Parameter: A numerical summary describing a population (e.g., population mean μ)
7. Statistic: A numerical summary describing a sample (e.g., sample mean x̄)

### Key distinction: Parameter → Population, Statistic → Sample. This is one of the most commonly tested concepts.
-----------------------------------------------------------------------------------------------------------------------------
## Types of Data 
A. Categorical (Qualitative) vs Numerical (Quantitative)
1. Categorical (Qualitative data): Represents categories or labels, not numbers (e.g., gender, blood type, city)
   - Nominal: No inherent order (e.g., colors, religion, gender)
   - Ordinal: Has a meaningful order/rank, but intervals aren't necessarily equal (e.g., satisfaction rating:                               low/medium/high; education level)
2. Numerical (Quantitative): Represents measurable quantities
   - Discrete: Countable, whole-number values only (e.g., number of children, number of cars)
   - Continuous: Can take any value within a range, including decimals (e.g., height, weight, temperature)
   - Interval vs Ratio
     - Interval: No true zero (zero doesn't mean "absence". E.g., Temperature in °C, Calendar years
     - Ratio: Has a true zero (zero means "none") E.g: Height, weight, income, age 
 ---- -----------------------------------------------------------------------------------------------------------------------
# Descriptive Statistics 
Descriptive statistics are simple tools that help us understand and summarize data. They show the basic features of a dataset, like the average, highest and lowest values and how spread out the numbers are. It's the first step in making sense of information.
## Types of Descriptive Statistics 
- Measure of Central Tendecy : Where the data is centers
- Measure of Variability: How spread out the data is 
- Measure of Frequency Distribution: How the data is distributed
### Measure of Central Tendency 
Central tendencies in statistics are numerical values that represent the middle or typical value of a dataset. Also known as averages, they provide a summary of the entire data, making it easier to understand the overall pattern or behavior. These values are useful because they capture the essence of large datasets in a single, representative number.
#### Mean: 
- general terms is used for the arithmetic mean of the data, but other than the arithmetic mean there are geometric mean and harmonic mean as well that are calculated using different formulas.
- 2+3+5+6= 16/4= 4 The mean is 4
- Mean for ungrouped Data: is defined as the sum of the individual observations divided by the total number of observations N. In other words, the mean is given by the sum of all observations divided by the total number of observations.
- Mean for grouped data: defined for grouped data as the sum of the product of observations (xi) and their corresponding frequencies (fi) divided by the sum of all the frequencies (fi).
#### Median
Median of any distribution is that value that divides the distribution into two equal parts such that the number of observations above it is equal to the number of observations below it. Thus, the median is called the central value of any given data, either grouped or ungrouped.
a) Mean of Ungrouped Data : To calculate the Median, the observations must be arranged in ascending or descending order. If the total number of observations is N, then there are two cases
- Case 1: When N is Odd
- Median = Value of observation at [(n + 1) ÷ 2]th Position
- Case 2: When N is Even
- Median = Arithmetic mean of Values of observations at (n ÷ 2)th and [(n ÷ 2) + 1]th Position
#### Mode
Mode is the value of that observation which has a maximum frequency corresponding to it. In other, that observation of the data occurs the maximum number of times in a dataset.

##### When to use which:
- Symmetric data with no outliers → Mean
- Skewed data or outliers present → Median
- Categorical data → Mode
### Measures of Dispersion 
Dispersion refers to the degree to which data values in a dataset are spread out or scattered around an average (such as the mean or median). It helps us understand the variability or consistency within the data — whether the values are closely grouped or widely spread.
In statistics, measures of dispersion are numerical values that describe the extent of variation among data points. They provide insight into how the data is distributed and help compare the reliability or uniformity of different datasets.
The most common measures of dispersion include:
- Range: the difference between the maximum and minimum values.
- Variance: the average of the squared deviations from the mean.
- Standard Deviation: the square root of the variance, showing dispersion in the same units as the data.

#### Range 
The range is the difference between the highest and lowest values in a dataset. It is one of the simplest measures of dispersion (spread) and helps us understand how widely the data values are distributed.
- Range = Maximum Value - Minimum Value. This simple formula provides a quick way to quantify the spread of data.
#### Variance 
Variance is a number that tells us how spread out the values in a data set are from the mean (average). It shows whether the numbers are close to the average or far away from it.
- If the variance is small, it means most numbers are close to the mean. If the variance is large, it means the numbers are spread out more widely.
- A higher variance indicates greater variability, meaning the data is spread, while a lower variance suggests the data points are closer to the mean
#### Standard Deviation
Standard Deviation is a statistical measure that describes how much variation or dispersion there is in a set of data points. It helps us understand how spread out the values in a dataset are compared to the mean (average)
A higher standard deviation means the data points are more spread out, while a lower standard deviation means they are closer to the mean. It is classified as:
- Low standard deviation: The data points are close to the mean, meaning the values are relatively consistent.
- High standard deviation: The data points are spread out over a wider range, meaning there's more variability in the data.
### . Symmetrical vs Asymmetrical Distribution
- Symmetrical distribution: Left and right sides of the distribution are mirror images. Mean = Median = Mode. Example: Normal (bell curve) distribution.
- Asymmetrical distribution: Not mirrored — one tail is longer than the other. Mean, median, and mode differ. This is called a skewed distribution.
### Skewness and Its Types
Skewness is a key statistical measure that shows how data is spread out in a dataset. It tells us if the data points are skewed to the left (negative skew) or to the right (positive skew) in relation to the mean.
a) Types of Skewness 
- Positive Skewness
  In a positively skewed distribution, the right tail is longer than the left which means most data points are on the left with a few large values pulling the distribution to the right.
Relationship:Mean > Median > Mode
(Examples: Income distribution, exam scores and stock market returns.)
- Negative Skewness (Left Skew)
 In a negatively skewed distribution, the left tail is longer which means most data points are on the right with a few smaller values pulling the distribution to the left.
Relationship:Mean < Median < Mode
Examples: Test scores on easy exams, age at retirement and gestational age at birth.
- Zero Skewness (Symmetrical Distribution)
Zero skewness shows a perfectly symmetrical distribution where the mean, median and mode are equal. In a symmetrical distribution, the data points are evenly distributed around the central point.
Relationship:
Mean = Median = Mode
Example: A perfectly balanced dataset with equal frequencies of all values.

## Techniques to Handle Outliers
Outliers are data points that are very different from most other values in a dataset.They can occur due to measurement errors, unusual events or natural variation in the data. If not handled properly, they can affect analysis results and reduce machine learning model performance.
a) Detection Methods:
- Visualizing and Removing Outliers Using Box Plots
  ## Interquartile Range (IQR) and Box Plot
Quartiles divide sorted data into 4 equal parts:
- Q1 (25th percentile) — lower quartile
- Q2 (50th percentile) — median
- Q3 (75th percentile) — upper quartile

IQR = Q3 − Q1 → represents the spread of the middle 50% of data, and is robust to outliers.

Box Plot (Box-and-Whisker Plot) visually displays:

- Box: from Q1 to Q3 (the IQR)
- Line inside box: Median (Q2)
- Whiskers: extend to the smallest/largest values within 1.5×IQR of Q1/Q3
- Outliers: Points beyond 1.5×IQR from Q1 or Q3, typically plotted as individual dots
Other common techniques (good to know, even though not listed): trimming/removal, using robust statistics (median/IQR instead of mean/std), and square-root transformation.
- Visualizing and Removing Outliers Using Scatter Plots
- Z-Score Method for Outlier Detection:The Z-score, also called the standard score, shows how far a data point is from the mean in terms of standard deviations. If the Z-score is greater than a chosen threshold , the value is considered an outlier. 
b) Treatment Strategies
- Capping (Winsorization): Replace extreme values with a set percentile boundary (e.g., cap all values above 95th percentile at the 95th percentile value) instead of removing them — preserves sample size.
- Log Transformation: Apply log(x) to compress the scale of large values, reducing the influence of extreme values and often correcting right-skewed distributions.
- Binning (Discretization): Group continuous values into ranges/bins (e.g., age → 0–18, 19–35, 36–60, 60+), which reduces the impact of extreme individual values.
----------------------------------------------------------------------------------------------------------------------------
# Distribution 
Distributions can be represented in various forms such as probability density functions for continuous data or probability mass functions for discrete data.
- Probability Function: A probability function is used to assign probabilities to different possible outcomes in a dataset.
- Probability Density Function (PDF): It is used for continuous variables. It doesn’t give the exact probability of one value but instead shows the likelihood of a value falling within a certain range.
- Cumulative Distribution Function (CDF): This represents the probability that a variable takes a value less than or equal to a specific point.
## Types of Distribution 
- Discrete Distributions
- Continuous Distribution
### Discrete Distribution 
A discrete distribution results from countable data with a finite number of possible values. Furthermore, we can report discrete distributions in tables, and the respective values of the random variable are countable. Ex: rolling dice, choosing several heads, etc.
1. Binomial Distribution
- The binomial distribution measures the probability of the number of successes or failure outcomes in an experiment on each try.
- Characteristics are classified into two mutually exclusive and exhaustive classes, such as the number of successes/failures and the number accepted/rejected that follow a binomial distribution.
- Ex: Tossing a coin: The probability of the coin landing Head is ½, and the probability of the coin landing tail is ½
2. Poisson Distribution
- The Poisson distribution is the discrete probability distribution that measures the likelihood of a number of events occurring in a given period when the events occur one after another in a well-defined manner.
- Characteristics that can theoretically take large values but actually take small values have Poisson distribution.
- Ex: Number of defects, errors, accidents, absentees, etc.
3. Hypergeometric distribution
- The hypergeometric distribution is a discrete distribution that measures the probability of a specified number of successes in (n) trials without replacement from a relatively large population (N). In other words, sampling without replacement.
- The hypergeometric distribution is similar to the binomial distribution;
- The basic difference of binomial distribution is that probability of success is the same for all trials, while it is not the same case for hypergeometric distribution.


  
  





