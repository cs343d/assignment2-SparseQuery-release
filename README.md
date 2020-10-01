# Sparse Query Optimization

## Description

In this assignment you will use techniques from sparse
computation to manually optimize a database query.

### The query you will optimize

In plain english the query over this database is:

Find the number of trades of stocks and the
number of trades of bonds whose price on
trading days from 13 to 268 was never more
than 299.0 or whose volume on trading days from 13 to 268 was never less
than 10.0.

If there are both stocks and bonds in the database
that meet this criteria then the ouput should be a table with 2 columns and 2 rows: the
asset classes (stocks and bonds) in one column, and the number of trades
in the other column. If there are no assets that meet this criteria then
the table can be empty.

### The database layout

The database, `fakedb` operates on collections of tables.
The first column in each table is the primary key, which
is unique for all rows in the table. All elements
in a column are of the same type, which can
be integers, floating point numbers, or strings.

The example data you will execute this query over
is in [./tables/assets.csv](./tables/assets.csv).

There are 4 tables in this file:
* tradable - The list of asset names and their category (stock, bond, future, etc.).
* price-over-time - The list of trading days and the prices of different assets on each day.
* volume-over-time - The list of trading days and the trading volumes on each day.
* trades - Our firm's executed trades listed by unique (and meaningless) trade ids (INT fields).

## Project structure

All source code is in [main.cpp](main.cpp).

The query will be implemented by a `QueryEngine` object.
You are given a reference implementation called
`ReferenceQueryEngine`. It is located in `main.cpp` along
with the rest of the source code. This reference
implementation includes all of the data needed to
load tables from `.csv` files and run the query
engine to produce the final output.

Your job is to implement methods / functions labeled with: `// STUDENTS: FILL IN THIS FUNCTION`. Your implementation should generate code whose behavior matches the examples in [./expected_results/](./expected_results/) up to
the order of rows in the table.

## Grading and Submission

This project will be submitted through canvas and
graded as a whole out of 100 points. We will judge
the effort you put into optimizing the design.

## Extra Credit

Optimize the runtime of the query as much as you can.
