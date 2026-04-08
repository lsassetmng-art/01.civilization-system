# ============================================================
# POCKET SECRETARY DATABASE MIGRATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: database-migration-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines database migration rules.


# VERSIONING

Room database must use
versioned schema management.


Example

v1
v2
v3


# MIGRATION REQUIREMENT

Each version upgrade must define
a migration script.


# MIGRATION PRINCIPLES

No destructive schema change.

Existing user data must be preserved.


# PROHIBITED OPERATIONS

DROP TABLE

DROP COLUMN

without migration path.
