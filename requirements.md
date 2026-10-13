# Audit Logging and Safe Database Migrations

## 1. Project Overview
This project demonstrates how PostgreSQL can record database changes and apply schema migrations safely using Flyway. It builds on the existing audit logging and category hierarchy work.

## 2. Problem Statement
Manual database changes can cause inconsistent structures and make it difficult to identify what changed. This project uses versioned migrations and audit logs to improve traceability, consistency, and database reliability.

## 3. Objectives
- Record important INSERT, UPDATE, and DELETE operations.
- Capture previous and new row values where applicable.
- Track schema migration versions and execution results using Flyway.
- Support hierarchical categories using parent-child relationships.
- Apply least-privilege database access.
- Test migrations and verify database backups through restoration.

## 4. Main Components
- **Audit Log:** stores the affected table, operation, old and new row data, database user, and timestamp.
- **Categories:** stores categories and optional parent-category relationships.
- **Flyway Schema History:** records migration execution details managed by Flyway.
- **Migration Files:** contain ordered, versioned database changes.

## 5. Functional Requirements
1. The database shall record selected data changes in an audit log.
2. Audit records shall identify the operation and when it occurred.
3. Flyway shall apply versioned migrations in order and record their outcomes.
4. Category records shall support parent-child relationships.
5. Database permissions shall restrict access to authorized users.

## 6. Security Requirements
- Use least-privilege database roles.
- Restrict access to audit records.
- Avoid using a database superuser for routine application access
- Do not store plaintext passwords if authentication data is introduced.
- Protect audit records against unauthorized modification.

## 7. Testing and Reliability
- Verify audit logging with INSERT, UPDATE, and DELETE tests.
- Test migrations against a clean test database.
- Confirm migration status through Flyway.
- Compare query plans using EXPLAIN ANALYZE when optimizing queries.
- Restore a backup into a separate test database to verify recovery.

## 8. Technology Stack
- PostgreSQL 18
- Flyway Community Edition
- Git and GitHub
- Git Bash and Visual Studio Code

## 9. Acceptance Criteria
The project is complete when audit operations are verified, migrations work on a clean test database, database permissions are tested, query-performance evidence is recorded, and a backup is successfully restored in a separate test environment.