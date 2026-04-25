# ============================================================
# CIVILIZATION DDL DEPENDENCY ORDER
# ============================================================

status: db-registration-preparation
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the required dependency order for future DDL execution.

## 2. Canonical DDL Order

Recommended DDL order:

1. enum and code master tables
2. root entity tables
3. revision and lineage tables
4. relation and binding tables
5. workflow tables
6. event tables
7. outbox and inbox tables
8. projection tables
9. audit tables
10. verify views

## 3. Rule

No table with unresolved FK dependency may be applied before its dependency base exists.

## 4. Acceptance Checklist

- canonical DDL order fixed
- FK dependency rule fixed

## Exact DDL Grouping
## Exact DDL Grouping

DDL groups must be prepared in the following dependency order:

1. schema and extension prerequisites
2. enum and code master tables
3. root entity tables
4. revision and lineage tables
5. relation and binding tables
6. workflow and state tables
7. event / outbox / inbox tables
8. projection tables
9. audit tables
10. verify views and helper views

## Exact FK Rule

No table with unresolved FK dependency may be applied
before its referenced root or revision base exists.

## Exact Sequence Rule

If two tables can be created independently,
prefer the table that is reused by more downstream domains first.

## Exact Bundle To DDL Mapping Principle
## Exact Bundle To DDL Mapping Principle

When future DDL execution is planned, bundle sequencing should still be respected.

Recommended mapping posture:

- bundle 1 influences common tables, audit, idempotency, outbox/inbox, action scope
- bundle 2 influences world, player, persona, event, builder tables
- bundle 3 influences government and territory tables
- bundle 4 influences economy, marketplace, settlement, and calculation tables
- bundle 5 influences runtime, queue, and projection-support tables
- bundle 6 influences law, war, education, and career tables
- bundle 7 influences asset, inventory, memory, history, reward, skill, communication, dictionary, and final meta-support tables

This is a planning principle for future SQL work, not an instruction to execute SQL now.
