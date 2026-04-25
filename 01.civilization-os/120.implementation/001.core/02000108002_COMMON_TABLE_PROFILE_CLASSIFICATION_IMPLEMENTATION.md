# ============================================================
# COMMON TABLE PROFILE CLASSIFICATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines canonical table profile classes used to determine
which common column groups must be applied.

# 2. TABLE PROFILE CLASSES

The canonical classes are:

1. master
2. entity
3. transaction
4. workflow
5. rule
6. trace
7. aggregate
8. bridge
9. snapshot
10. queue

# 3. MASTER

Purpose:
- reference definitions
- taxonomy
- enums
- code lists
- rule catalogs

Typical columns:
- id
- code
- name
- description
- enabled_flag
- sort_order
- version
- created_at
- updated_at

# 4. ENTITY

Purpose:
- stable business/domain object

Typical columns:
- id
- code
- status
- owner_ref
- version
- created_at
- updated_at
- created_by
- updated_by

Examples:
- company
- bank account
- creator profile
- facility

# 5. TRANSACTION

Purpose:
- a business action or execution outcome

Typical columns:
- id
- status
- trace_id
- actor_ref
- source_ref
- created_at
- updated_at

Examples:
- order
- payment obligation
- trade execution
- transfer record

# 6. WORKFLOW

Purpose:
- review, approval, request, queue, decision process

Typical columns:
- id
- workflow_status
- review_status
- approval_status
- decision_status
- reason_code
- created_at
- updated_at

Examples:
- review queue
- approval request
- scouting request

# 7. RULE

Purpose:
- time-bounded governing rule

Typical columns:
- id
- code
- enabled_flag or status
- effective_from
- effective_to
- version
- created_at
- updated_at

Examples:
- tax rule
- payment rule
- access rule
- fee rule

# 8. TRACE

Purpose:
- auditability, lineage, execution trace

Typical columns:
- id
- trace_id
- source_ref
- actor_ref
- run_id
- event_id
- created_at

Examples:
- registry trace
- metric lineage
- approval trail

# 9. AGGREGATE

Purpose:
- computed rollup or summary state

Typical columns:
- id
- scope_type
- scope_id
- version
- calculated_at
- source_ref
- trace_id

Examples:
- score aggregate
- world state aggregate
- KPI snapshot

# 10. BRIDGE

Purpose:
- cross-layer or cross-domain mapping

Typical columns:
- id
- source_ref
- target_ref
- binding_type
- status
- version
- created_at
- updated_at

Examples:
- model binding
- interface binding
- approval execution binding

# 11. SNAPSHOT

Purpose:
- frozen point-in-time representation

Typical columns:
- id
- snapshot_code
- source_ref
- snapshot_version
- created_at
- trace_id

Examples:
- state snapshot
- baseline snapshot
- cap table snapshot

# 12. QUEUE

Purpose:
- pending work item execution

Typical columns:
- id
- queue_status
- priority
- payload_ref
- assigned_to
- queued_at
- started_at
- completed_at

Examples:
- authority decision queue
- governance review queue

# 13. APPLICATION RULE

Each physical table design must explicitly declare exactly one
primary table profile.

Secondary behavior may be noted, but profile ambiguity is prohibited.


## Exact Table Profile Classes
## Exact Table Profile Classes

The following profile classes are canonical:

- canonical_entity_table
- revision_table
- workflow_table
- event_table
- outbox_table
- inbox_table
- projection_table
- audit_table
- observability_table
- reconciliation_table
- enum_master_table

Each table must belong to exactly one primary profile class.
Mixed-purpose table design is prohibited unless explicitly reviewed.

## Exact Column Minimum By Profile

canonical_entity_table minimum:
- id
- code (optional by domain)
- status
- version
- created_at
- updated_at
- created_by
- updated_by

revision_table minimum:
- id
- revision_group_id
- superseded_by
- effective_from
- effective_to
- status
- created_at

event_table minimum:
- event_id
- event_type
- aggregate_type
- aggregate_id
- request_id
- causation_id
- correlation_id
- occurred_at
- schema_version

audit_table minimum:
- audit_id
- aggregate_type
- aggregate_id
- action_code
- actor_id
- request_id
- occurred_at
