# Pandas Data Manipulation and Data Visualization

## Introduction

Data manipulation means organizing, cleaning, changing, and analyzing data so that it becomes useful. Python provides several libraries for working with data. Pandas and NumPy are mainly used for data handling and calculations, while Matplotlib, Seaborn, Plotly, and Cufflinks are used for visualization.

# Python Libraries

## Pandas

### Definition

Pandas is a Python library used to work with structured data. Structured data is information arranged in rows and columns, similar to an Excel spreadsheet or database table.

### Uses

- Creating tables of data
- Reading CSV and Excel files
- Selecting rows and columns
- Cleaning missing or incorrect values
- Filtering records
- Grouping and summarizing information
- Combining multiple datasets
- Preparing data for visualization and machine learning

### Main Pandas structures

- **Series:** A one-dimensional collection similar to one column.
- **DataFrame:** A two-dimensional table containing rows and columns.

## NumPy

### Definition

NumPy stands for Numerical Python. It is a Python library used for numerical operations and working with arrays.

### Uses

- Performing mathematical calculations
- Working with large collections of numbers
- Creating arrays
- Generating random values
- Supporting scientific and statistical analysis
- Supporting Pandas and machine-learning libraries

## OS Module

### Definition

The OS module is a built-in Python module that allows a program to communicate with the computer's operating system.

### Uses

- Finding the current working folder
- Viewing files inside a folder
- Creating and managing folders
- Checking whether a file exists
- Working with file paths

## Matplotlib Pyplot

### Definition

Matplotlib is a Python data-visualization library. Pyplot is a part of Matplotlib that provides tools for creating charts.

The short name `plt` is commonly used to represent Matplotlib Pyplot.

### Uses

- Creating bar charts
- Creating line charts
- Creating pie charts
- Creating histograms
- Adding chart titles and labels
- Changing chart colors, sizes, and styles

# Understanding a DataFrame

## Head

### Definition

Head is a Pandas method that displays the first rows of a DataFrame. By default, it normally displays the first five rows.

### Uses

- Previewing a dataset
- Checking whether the data loaded correctly
- Understanding column names
- Viewing the first records quickly

## Tail

### Definition

Tail is a Pandas method that displays the last rows of a DataFrame. By default, it normally displays the last five rows.

### Uses

- Checking the final records
- Viewing how a dataset ends
- Confirming that all data was loaded

## Data Types

### Definition

Data types describe the type of information stored in each column.

### Common data types

- **Integer:** Whole numbers
- **Float:** Numbers containing decimals
- **Object:** Usually text or mixed values
- **Boolean:** True or False
- **DateTime:** Date and time values

### Uses

- Understanding the kind of data in each column
- Finding incorrect data types
- Preparing columns for calculations
- Preventing errors during analysis

The correct Pandas term is `dtypes`, not `d.types`.

## Index

### Definition

An index is a label used to identify each row in a Series or DataFrame. The default index usually begins at zero.

### Uses

- Identifying rows
- Selecting specific records
- Organizing data
- Joining DataFrames
- Improving data access

## Describe

### Definition

Describe is a Pandas method that provides a statistical summary of a dataset.

### Information provided

- Count
- Mean
- Standard deviation
- Minimum value
- First quartile
- Median
- Third quartile
- Maximum value

### Uses

- Understanding the distribution of data
- Comparing numerical columns
- Finding unusually high or low values
- Performing exploratory data analysis

# Selecting and Filtering Data

## Column Selection

### Definition

Column selection means choosing one or more specific columns from a DataFrame.

### Uses

- Focusing on relevant information
- Removing unnecessary information from an analysis
- Comparing selected variables
- Creating a smaller dataset

## Slicing

### Definition

Slicing means selecting a particular range of data from a Series or DataFrame.

### Uses

- Selecting a range of rows
- Selecting a range of columns
- Previewing a smaller part of a large dataset
- Creating a subset for analysis

## Filtering

### Definition

Filtering means selecting only the rows that satisfy a condition.

### Uses

- Finding customers from a particular location
- Selecting products above a particular price
- Finding students with scores above a required level
- Identifying records with missing information
- Creating specific groups for analysis

## `iloc`

### Definition

`iloc` is a Pandas indexer used to select rows and columns by their numerical positions.

### Uses

- Selecting a row by its position
- Selecting a column by its position
- Selecting a range of rows and columns
- Accessing data when labels are unknown

### Important point

`iloc` is based on numerical position. It is different from conditional filtering, which selects data according to a condition.

## `loc`

### Definition

`loc` is a Pandas indexer used to select rows and columns by their labels or names.

### Uses

- Selecting rows using index labels
- Selecting columns using column names
- Filtering data using conditions
- Selecting a labeled range of data

# Pandas Series

## Definition

A Pandas Series is a one-dimensional collection of values with index labels. It is similar to a single column in a spreadsheet.

## Uses

- Storing one column of information
- Performing calculations on a set of values
- Creating a column for a DataFrame
- Accessing values through index labels

## Series and DataFrame Difference

| Series | DataFrame |
|---|---|
| One-dimensional | Two-dimensional |
| Similar to one column | Similar to a complete table |
| Contains values and an index | Contains rows, columns, and an index |

# Random Seed

## Definition

A random seed is a fixed starting point used by a random-number generator.

## Uses

- Producing the same random results again
- Making experiments repeatable
- Creating consistent training and testing datasets
- Comparing machine-learning models fairly

Without a fixed seed, random results may change each time a program runs.

# Index Management

## Reset Index

### Definition

Reset index means replacing the existing row labels with a new default numerical index.

### Uses

- Fixing index numbers after filtering rows
- Creating a clean sequential index
- Turning an old index into a regular column when needed
- Preparing a DataFrame for further analysis

## MultiIndex

### Definition

A MultiIndex is a hierarchical index containing more than one index level.

### Uses

- Organizing data using multiple categories
- Grouping information by more than one variable
- Representing complex datasets
- Creating detailed summaries

For example, employee information could be indexed first by department and then by employee name.

# Handling Missing Values

## Missing Values

### Definition

Missing values are data points that are empty, unavailable, or not recorded.

### Causes

- A person did not answer a question
- Information was not collected
- A file contained empty cells
- Data was lost during transfer

## Drop Missing Values

### Definition

Dropping missing values means removing rows or columns that contain empty data.

### Uses

- Removing incomplete records
- Cleaning a dataset
- Preventing calculation errors

### Limitation

Dropping too many records may remove useful information and reduce the size of the dataset.

## Fill Missing Values

### Definition

Filling missing values means replacing empty data with another appropriate value.

### Common replacement choices

- Mean
- Median
- Mode
- Zero
- A label such as "Unknown"

### Uses

- Keeping important records
- Preparing data for analysis
- Preventing errors in machine-learning models

# Grouping and Summarizing Data

## GroupBy

### Definition

GroupBy is a Pandas operation that separates data into groups based on one or more categories and then performs calculations for each group.

### Uses

- Calculating average salary by department
- Finding total sales by region
- Counting customers by city
- Finding the highest product price by category
- Comparing groups

## GroupBy with Describe

### Definition

GroupBy with describe provides a complete statistical summary for each group.

### Uses

- Comparing the average of different groups
- Checking the minimum and maximum values in each category
- Studying the distribution of each group
- Understanding differences between categories

## Transpose

### Definition

Transpose changes rows into columns and columns into rows.

### Uses

- Improving the presentation of a table
- Making a wide table easier to read
- Rearranging statistical summaries
- Changing the orientation of data

# Combining DataFrames

## Merge

### Definition

Merge is a Pandas operation used to combine two DataFrames using one or more common columns.

### Uses

- Combining customer and order information
- Combining employee and department information
- Adding product details to sales records
- Connecting related datasets

## Merging Two DataFrames

Two DataFrames can be merged when they share a related column, such as Customer ID, Product ID, or Employee ID.

The common column works as a key that connects matching records.

## Inner Join

### Definition

An inner join returns only the records that have matching values in both DataFrames.

### Use

It is used when the analysis needs only records that exist in both datasets.

## Left Join

### Definition

A left join returns every record from the left DataFrame and matching information from the right DataFrame.

### Use

It is used when all records from the first dataset must be kept, even when some do not have a match.

## Right Join

### Definition

A right join returns every record from the right DataFrame and matching information from the left DataFrame.

### Use

It is used when all records from the second dataset must be kept.

## Outer Join

### Definition

An outer join returns all records from both DataFrames, whether they match or not.

### Use

It is used when no information from either dataset should be removed.

## Join Operator

### Definition

The Pandas join operator combines DataFrames mainly by using their indexes.

### Uses

- Combining datasets with related indexes
- Adding columns from one DataFrame to another
- Connecting tables that use index values as keys

## Concatenation

### Definition

Concatenation means placing two or more DataFrames together.

### Types

- **Vertical concatenation:** Adds rows below existing rows.
- **Horizontal concatenation:** Adds columns beside existing columns.

### Uses

- Combining monthly datasets
- Adding new records
- Placing related columns together
- Combining files with the same structure

## Merge, Join, and Concatenation Difference

| Operation | Main purpose |
|---|---|
| Merge | Combines DataFrames using common columns |
| Join | Combines DataFrames mainly using indexes |
| Concatenation | Places DataFrames together by rows or columns |

# Apply Function

## Definition

The apply function is used to run a custom function on the values, rows, or columns of a DataFrame.

## Uses

- Creating new categories
- Changing text values
- Performing calculations
- Applying business rules
- Creating a new column from existing information

For example, an apply function can classify salaries as low, medium, or high based on a custom rule.

# Exploratory Data Analysis

## Definition

Exploratory Data Analysis, also called EDA, is the process of examining and understanding a dataset before creating a machine-learning model or making a decision.

## Uses

- Understanding the structure of data
- Finding missing values
- Finding duplicate records
- Identifying incorrect data types
- Studying numerical summaries
- Finding patterns and relationships
- Detecting unusual values or outliers
- Selecting useful variables
- Preparing data for machine learning

## Main Steps of EDA

1. Understand the purpose of the dataset.
2. Examine the rows and columns.
3. Check data types.
4. Identify missing values.
5. Identify duplicate records.
6. Study numerical statistics.
7. Examine category frequencies.
8. Identify outliers.
9. Study relationships between variables.
10. Create visualizations.
11. Write findings and conclusions.

# Data Visualization

## Definition

Data visualization is the process of presenting information through charts, graphs, maps, and other visual formats.

## Uses

- Making complex information easier to understand
- Finding patterns and trends
- Comparing categories
- Identifying unusual values
- Communicating results to others
- Supporting business decisions

## Matplotlib

### Definition

Matplotlib is a Python library used to create basic and highly customizable charts.

### Uses

- Bar charts
- Line charts
- Pie charts
- Histograms
- Scatter plots
- Customized chart titles, colors, and labels

## Seaborn

### Definition

Seaborn is a statistical data-visualization library built on Matplotlib. It creates attractive charts with less customization work.

### Uses

- Correlation heatmaps
- Box plots
- Distribution plots
- Count plots
- Bar charts
- Comparing relationships between variables

## Plotly

### Definition

Plotly is a Python library used to create interactive visualizations.

### Uses

- Creating charts with hover information
- Zooming into a chart
- Filtering visual information
- Building interactive dashboards
- Creating interactive bar, line, scatter, and map charts

## Cufflinks

### Definition

Cufflinks is a Python library that connects Pandas DataFrames with Plotly.

### Uses

- Creating interactive charts directly from a DataFrame
- Exploring data in Jupyter Notebook
- Connecting Pandas analysis with Plotly visualization

Plotly Express is more commonly used in modern projects because it is simple and actively maintained.

# Comparison of Important Libraries

| Library | Main purpose |
|---|---|
| Pandas | Cleaning, organizing, and analyzing structured data |
| NumPy | Numerical calculations and arrays |
| Matplotlib | Basic and customizable visualizations |
| Seaborn | Statistical and attractive visualizations |
| Plotly | Interactive visualizations |
| Cufflinks | Connecting Pandas with Plotly |


# Exploratory Data Analysis
EDA means Exploratory Data Analysis. It is the process of understanding a dataset before creating a machine-learning model.

### A simple EDA process includes:
- Understanding rows and columns
- Checking data types
- Finding missing values
- Finding duplicates
- Studying numerical statistics
- Studying category frequencies
- Finding relationships between variables
- Identifying unusual values or outliers
- Creating visualizations
