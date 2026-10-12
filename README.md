# Audit Logging, Category Trees, and Safe Migrations

## Objective
Practice PostgreSQL audit logging, hierarchical categories, versioned schema migrations with Flyway, and least-privilege database roles.

## Tasks Completed

### 1. Audit Logging
- Verified the audit logging trigger on the `students` table.
- Tested INSERT, UPDATE, and DELETE operations.
- Confirmed that changes were recorded in `audit_log`, including old and new row data.

### 2. Hierarchical Categories
- Used a self-referencing `parent_id` in the `categories` table.
- Created a category tree with Electronics, Computers, Laptops, and Phones.
- Verified the hierarchy using a recursive CTE.

### 3. Flyway Migrations
- Installed and ran Flyway Community Edition 13.10.0.
- Connected Flyway to PostgreSQL and the `bootcamp` database.
- Recorded baseline version 0.
- Applied and verified:
  - `V1__create_audit_log.sql`
  - `V2__category_tree_check.sql`
- Confirmed that both migrations have the `Success` status.

### 4. Least-Privilege Roles
- Created the `app_reader` role with `NOLOGIN`.
- Granted connection, schema usage, and SELECT permissions for `students` and `categories`.
- Verified that an INSERT attempt was denied.

## Files
- `flyway.toml` — Flyway configuration.
- `sql/V1__create_audit_log.sql` — audit log table migration.
- `sql/V2__category_tree_check.sql` — safe category parent-column check.

## Tools Used
- PostgreSQL
- Flyway Community Edition 13.10.0
- Git Bash
- Git and GitHub

## Conclusion
This lab provided practical experience with audit logging, recursive category trees, safe versioned migrations, and database least-privilege permissions.