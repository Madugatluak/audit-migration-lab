# Audit Logging, Category Trees, and Safe Migrations

## Objective
Practice PostgreSQL auditing, category trees, Flyway migrations, database security, query performance, and backup recovery.

## 1. Audit Logging
- Created audit logs for students and categories.
- Tested INSERT, UPDATE, and DELETE operations.
- Verified that audit entries captured old and new row data.

## 2. Hierarchical Categories
- Used a self-referencing parent_id.
- Created Electronics, Computers, and Laptops.
- Practiced recursive CTE queries.

## 3. Flyway Migrations
- Used Flyway Community Edition 13.10.0.
- Preserved the original bootcamp configuration.
- Used flyway-capstone.toml for the capstone database.
- Created six versioned migrations:
  - V1__core_tables.sql
  - V2__indexes.sql
  - V3__audit_and_triggers.sql
  - V4__least_privilege_permissions.sql
  - V5__seed_demo_data.sql
  - V6__row_level_security.sql
- Successfully applied all six migrations to a fresh test database.

## 4. Least-Privilege Permissions and RLS
- Created the app_reader role with NOLOGIN.
- Granted SELECT on students and categories.
- Withheld direct table permissions on audit_log.
- Enabled row-level security on audit_log.
- Confirmed that no RLS policies grant direct access to audit_log.
- Tested audit-trigger behavior as the database owner.
- Ordinary application-writer behavior and FORCE ROW LEVEL SECURITY have not been tested.

## 5. Query Performance
- Created indexes and used EXPLAIN ANALYZE.
- Recorded index-scan and sequential-scan plans.
- Saved results in the evidence folder.
- The comparison uses a small sample dataset and is a demonstration, not a reliable production benchmark.

## 6. Backup and Restore
- Created a custom-format backup at ~/backups/capstone.dump.
- Inspected the backup archive.
- Restored it into capstone_restore_test.
- Verified tables, student records, and audit history.
- Saved evidence in evidence/backup_restore_test.txt.

## 7. Security Scope
- No password or other sensitive authentication fields are stored in the current schema.
- Parameterized queries should be used if an application layer is added.
- No multi-tenant ownership model is currently defined, so tenant-specific RLS policies have not been implemented.

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
The project demonstrates audit logging, hierarchical queries, versioned migrations, least-privilege permissions, row-level security on the audit log, query plan analysis, and verified backup restoration.
