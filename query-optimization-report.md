\# Query Optimization Report



\## Objective

To measure the effect of a B-tree index on a selective PostgreSQL query.



\## Test Environment

\- Database: `query\_optimization\_lab`

\- PostgreSQL version: 18.6

\- Test table: `students\_benchmark`

\- Number of test records: 50,000

\- Search condition: `full\_name = 'Student 25000'`



\## Before Optimization

The query ran without an index on `full\_name`.



\- Execution plan: Sequential Scan

\- Rows returned: 1

\- Rows removed by filter: 49,999

\- Execution time: 8.924 ms



\## Optimization Applied

Created a B-tree index on the `full\_name` column.



```sql

CREATE INDEX idx\_students\_benchmark\_full\_name

ON students\_benchmark (full\_name);



ANALYZE students\_benchmark;

```



\## After Optimization

The same query was executed again.



\- Execution plan: Index Scan

\- Rows returned: 1

\- Execution time: 0.224 ms



\## Results

The measured execution time decreased by approximately 97.5%, from 8.924 ms to 0.224 ms.



The index reduced the work required for this selective lookup in this test. Actual query performance may vary with caching, system load, data distribution, and query conditions.



\## Conclusion

The experiment demonstrates how a B-tree index can improve selective searches on a large table. The original `capstone` database was not modified; testing was performed in the separate `query\_optimization\_lab` database.



\## Evidence

\- Screenshot 1: Query execution plan before adding the index.

\- Screenshot 2: Query execution plan after adding the index.



