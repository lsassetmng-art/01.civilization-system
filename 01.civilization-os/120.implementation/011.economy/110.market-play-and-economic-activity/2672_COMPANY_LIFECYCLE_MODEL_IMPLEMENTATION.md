# ============================================================
# COMPANY LIFECYCLE MODEL
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy

# 1. PURPOSE

Defines physical lifecycle state storage and transition handling.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLES

- company_lifecycle_transition
- company_lifecycle_snapshot

# 4. COLUMNS

## 4.1 company_lifecycle_transition

Common columns:
- id
- trace_id
- created_at
- updated_at

Domain columns:
- company_id
- previous_status
- next_status
- reason_code
- actor_ref
- transitioned_at

## 4.2 company_lifecycle_snapshot

Common columns:
- id
- created_at
- updated_at

Domain columns:
- company_id
- status
- status_reason_code
- effective_from
- effective_to
- version

# 5. KEYS AND CONSTRAINTS

FK:
- company_id -> company_core.id

Indexes:
- idx_company_lifecycle_transition_company_id
- idx_company_lifecycle_transition_transitioned_at
- idx_company_lifecycle_snapshot_company_id
- idx_company_lifecycle_snapshot_status

Checks:
- effective_from < effective_to

# 6. FAILURE HANDLING

Fail closed on:
- illegal transition
- overlapping active lifecycle snapshot
