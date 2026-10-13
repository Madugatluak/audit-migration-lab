# Audit Logging, Category Trees, and Safe Migrations

## Objective
Practice PostgreSQL auditing, category trees, Flyway migrations, database permissions, query performance, and backup recovery.

## 1. Audit Logging
- Created audit logs for students and categories.
- Tested INSERT, UPDATE, and DELETE operations.
- Verified that changes were recorded with old and new row data.

## 2. Hierarchical Categories
- Used a self-referencing parent_id.
- Created Electronics, Computers, and Laptops.
- Practiced recursive CTE queries.

## 3. Flyway Migrations
- Used Flyway Community Edition 13.10.0.
- Preserved the original bootcamp configuration.
- Created flyway-capstone.toml for the capstone database.
- Applied and verified five migrations:
  - V1__core_tables.sql
  - V2__indexes.sql
  - V3__audit_and_triggers.sql
  - V4__least_privilege_permissions.sql
  - V5__seed_demo_data.sql

## 4. Least-Privilege Permissions
- Created the app_reader role with NOLOGIN.
- Granted SELECT on students and categories.
- Withheld direct table permissions on audit_log.

## 5. Query Performance
- Created indexes and used EXPLAIN ANALYZE.
- Recorded index-scan and sequential-scan plans.
- Saved results in the evidence folder.
- The comparison uses a small sample dataset.

## 6. Backup and Restore
- Created ~/backups/capstone.dump.
- Inspected the backup archive.
- Restored it into capstone_restore_test.
- Verified all four tables, student records, and audit history.
- Saved evidence in evidence/backup_restore_test.txt.

## Project Files
- requirements.md
- ER_diagram.md
- flyway.toml
- flyway-capstone.toml
- sql/
- sql_capstone/
- evidence/
- screenshots/

## Tools
- PostgreSQL 18.6
- Flyway Community Edition 13.10.0
- Git Bash
- Git and GitHub

## Conclusion
The project demonstrates audit logging, hierarchical queries, versioned migrations, least-privilege permissions, query plan analysis, and verified backup restoration.
