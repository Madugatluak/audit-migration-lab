# Query Optimization Report

## Objective

To measure the effect of a B-tree index on a selective PostgreSQL query.

## Test Environment

- Database: `query_optimization_lab`
- PostgreSQL version: 18.6
- Test table: `students_benchmark`
- Number of test records: 50,000
- Search condition: `full_name = 'Student 25000'`

## Before Optimization

The query ran without an index on `full_name`.

- Execution plan: Sequential Scan
- Rows returned: 1
- Rows removed by filter: 49,999
- Execution time: 10.805 ms

## Optimization Applied

Created a B-tree index on the `full_name` column.

```sql
CREATE INDEX idx_students_benchmark_full_name
ON students_benchmark (full_name);

ANALYZE students_benchmark;
```

## After Optimization

The same query was executed again.

- Execution plan: Index Scan
- Rows returned: 1
- Execution time: 0.177 ms

## Results

The measured execution time decreased by approximately 98.36%, from 10.805 ms to 0.177 ms.

The index reduced the work required for this selective lookup in this test. Actual query performance may vary with caching, system load, data distribution, and query conditions.

## Conclusion

The experiment demonstrates how a B-tree index can improve selective searches on a large table. Testing was performed in the separate `query_optimization_lab` database, leaving the original `capstone` database unchanged.

## Evidence

- `screenshots/query-before-index.png` — execution plan before adding the index.
- `screenshots/query-after-index.png` — execution plan after adding the index.
