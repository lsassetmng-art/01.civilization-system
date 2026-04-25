# ============================================================
# COMMON TABLE COLUMN STANDARD
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical common column standard
for physical table design across CivilizationOS.

This document must be treated as the base rule
before domain-specific table design is written.

# 2. DESIGN PRINCIPLES

1. Columns must be standardized before domain expansion.
2. Shared semantics must use shared names.
3. Similar meanings must not use different column names.
4. All write-capable tables must be auditable.
5. Lifecycle-bearing tables must define explicit state columns.
6. Effective-period tables must define valid/effective ranges explicitly.
7. Fail closed applies when table semantics are ambiguous.

# 3. COMMON COLUMN GROUPS

Common columns are not blindly applied to every table.
They are selected by table profile.

The canonical groups are:

- identity columns
- lifecycle columns
- audit columns
- period columns
- workflow columns
- visibility columns
- trace columns
- soft-delete columns

# 4. IDENTITY COLUMNS

## 4.1 Primary identifier

- id
  - meaning: immutable primary identifier
  - type: uuid or bigint (system-wide preference must be fixed per implementation target)
  - nullable: no

## 4.2 Human/system readable code

- code
  - meaning: stable readable code for business/lookup usage
  - type: text
  - nullable: depends on table profile
  - unique: usually yes for master/entity tables

## 4.3 Name fields

- name
  - meaning: canonical display name
  - type: text

- short_name
  - meaning: optional short label
  - type: text

- description
  - meaning: explanatory text
  - type: text

# 5. LIFECYCLE COLUMNS

## 5.1 Generic status

- status
  - meaning: entity lifecycle status
  - type: text
  - examples: DRAFT / ACTIVE / SUSPENDED / CLOSED / ARCHIVED

## 5.2 Version

- version
  - meaning: record/schema/business version
  - type: integer
  - default: 1

## 5.3 State transition support

- previous_status
  - meaning: prior state snapshot
  - type: text

- status_reason_code
  - meaning: machine-readable reason for transition
  - type: text

# 6. AUDIT COLUMNS

## 6.1 Time

- created_at
  - type: timestamptz
  - nullable: no

- updated_at
  - type: timestamptz
  - nullable: no

## 6.2 Actor

- created_by
  - meaning: actor/system that created the record
  - type: text or uuid ref depending on actor model

- updated_by
  - meaning: actor/system that last updated the record
  - type: text or uuid ref depending on actor model

# 7. PERIOD COLUMNS

Used for rule, policy, price, entitlement, assignment, and validity tables.

- effective_from
  - type: timestamptz

- effective_to
  - type: timestamptz

- valid_from
  - type: timestamptz

- valid_to
  - type: timestamptz

Rule:
- use effective_* when business effect timing matters
- use valid_* when data validity timing matters
- do not mix both without clear separation

# 8. WORKFLOW COLUMNS

Used for review/approval/decision/request tables.

- workflow_status
  - type: text

- review_status
  - type: text

- approval_status
  - type: text

- decision_status
  - type: text

- reason_code
  - type: text

- restriction_code
  - type: text

Rule:
Do not overload status for workflow semantics when
entity lifecycle and workflow lifecycle differ.

# 9. VISIBILITY COLUMNS

Used for UI/publication/interface controlled records.

- enabled_flag
  - type: boolean

- visibility_scope
  - type: text

- published_at
  - type: timestamptz

- unpublished_at
  - type: timestamptz

# 10. TRACE COLUMNS

Used for events, jobs, requests, approvals, observability, and cross-layer traceability.

- trace_id
  - type: text or uuid

- request_id
  - type: text or uuid

- run_id
  - type: text or uuid

- event_id
  - type: text or uuid

- source_ref
  - type: text

- actor_ref
  - type: text

- owner_ref
  - type: text

- scope_type
  - type: text

- scope_id
  - type: text

# 11. SOFT DELETE COLUMNS

Used only where soft deletion is explicitly allowed.

- is_deleted
  - type: boolean
  - default: false

- deleted_at
  - type: timestamptz

- deleted_by
  - type: text or uuid ref

Rule:
Prefer immutable history over soft delete where possible.

# 12. NAMING RULES

1. snake_case only
2. singular table-specific columns should use singular semantics
3. *_id reserved for identifier columns
4. *_code reserved for canonical short code
5. *_status reserved for lifecycle/workflow state columns
6. *_at reserved for timestamps
7. *_flag reserved for boolean flags
8. *_ref reserved for cross-domain loose references
9. *_payload reserved for structured JSON payloads

# 13. NULLABILITY RULES

1. id, created_at, updated_at must be NOT NULL
2. status should be NOT NULL when lifecycle exists
3. code should be NOT NULL for master tables
4. optional workflow columns may be NULL before process starts
5. deleted_* columns remain NULL until soft delete is applied

# 14. TYPE PREFERENCE RULES

Preferred physical types:

- uuid / bigint for id
- text for code and enum-like values
- boolean for flags
- integer for version/order/count where appropriate
- numeric for money/rate when exact precision is required
- timestamptz for all system time
- jsonb only when structure is intentionally variable

# 15. PROHIBITIONS

The following are prohibited unless explicitly justified:

- mixing created_on / createdAt / created_date variants
- using status for both lifecycle and review status in the same table
- using free-form text instead of reason_code when machine evaluation is needed
- using nullable primary identifiers
- using payload blobs instead of proper columns for stable canonical data

# 16. MINIMUM REQUIREMENTS BY TABLE

## 16.1 Master table minimum

- id
- code
- name
- enabled_flag
- version
- created_at
- updated_at

## 16.2 Entity table minimum

- id
- code (recommended)
- status
- version
- created_at
- updated_at
- created_by
- updated_by

## 16.3 Transaction table minimum

- id
- status
- trace_id
- occurred_at or created_at
- actor_ref
- created_at
- updated_at

## 16.4 Workflow table minimum

- id
- workflow_status
- review_status or approval_status as needed
- reason_code
- created_at
- updated_at

## 16.5 Rule/policy table minimum

- id
- code
- status or enabled_flag
- effective_from
- effective_to
- version
- created_at
- updated_at

# 17. TABLE DESIGN APPLICATION RULE

Every physical table design must include:

- table purpose
- table profile classification
- selected common column groups
- domain-specific columns
- pk
- unique constraints
- foreign keys
- indexes
- checks
- retention rule
- source of truth rule


## Exact Naming Rules
## Exact Naming Rules

Primary keys:
- pk_<table_name>

Foreign keys:
- fk_<table_name>__<referenced_table_name>

Unique constraints:
- uq_<table_name>__<semantic_name>

Indexes:
- ix_<table_name>__<semantic_name>

Check constraints:
- ck_<table_name>__<semantic_name>

## Exact Value Type Rules

Money:
- numeric(19,4)

Rate:
- numeric(9,6)

Quantity:
- numeric(19,6)

Percentage-like display fields must not replace canonical rate storage.

## JSONB Use Rule

JSONB is allowed only when:
- structure is auxiliary
- structure is not canonical lookup identity
- structure is not required for cross-domain referential integrity

Canonical relationship data must not be hidden in JSONB.
