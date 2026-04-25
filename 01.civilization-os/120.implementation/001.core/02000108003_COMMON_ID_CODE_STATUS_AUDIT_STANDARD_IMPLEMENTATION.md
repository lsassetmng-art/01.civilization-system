# ============================================================
# COMMON ID CODE STATUS AUDIT STANDARD
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical standards for id, code, status,
version, and audit columns.

# 2. ID STANDARD

## 2.1 id

- canonical name: id
- meaning: immutable row identifier
- requirement: primary key
- nullable: no

Rule:
The system must not mix multiple primary identifier names
for the same table purpose.

## 2.2 Foreign identifiers

- canonical format: <target>_id
- example:
  - company_id
  - seller_account_id
  - payout_profile_id

Rule:
Use *_id only for strong relational identity,
not for loose textual references.

# 3. CODE STANDARD

## 3.1 code

Use code when:
- the record needs stable readable lookup
- external/system reference is expected
- business logic refers to a short stable label

Do not use code for:
- ephemeral transactions unless justified
- traces where id is sufficient

# 4. STATUS STANDARD

## 4.1 lifecycle status

Canonical column:
- status

Used for:
- entity lifecycle

Examples:
- DRAFT
- ACTIVE
- SUSPENDED
- CLOSED
- ARCHIVED

## 4.2 workflow status

Canonical columns:
- workflow_status
- review_status
- approval_status
- decision_status

Rule:
If a table has both entity lifecycle and process lifecycle,
they must be separated.

# 5. VERSION STANDARD

Canonical column:
- version

Used for:
- optimistic control
- record revision
- rule/version evolution

Rule:
Do not invent revision_no / rev / ver / schema_ver variants
without documented separation.

# 6. AUDIT TIME STANDARD

Canonical columns:
- created_at
- updated_at

Optional:
- deleted_at
- published_at
- reviewed_at
- approved_at
- decided_at
- executed_at

Rule:
All timestamps should use timestamptz.

# 7. AUDIT ACTOR STANDARD

Canonical columns:
- created_by
- updated_by

Optional:
- deleted_by
- reviewed_by
- approved_by
- decided_by
- executed_by

Rule:
Use explicit actor suffixes for workflow-specific actions.

# 8. TRACE STANDARD

Canonical columns:
- trace_id
- request_id
- run_id
- event_id

Rule:
Not every table needs all trace columns.
Only attach the minimum necessary set.

# 9. OWNER / ACTOR / SOURCE STANDARD

Canonical loose reference columns:
- owner_ref
- actor_ref
- source_ref

Rule:
Use *_ref for cross-domain loose references where hard FK is not appropriate.

# 10. PROHIBITED INCONSISTENCIES

The following are prohibited:

- id + uuid + record_id mixed for the same semantic role
- state / status / condition mixed without separation
- created_on / createdAt / inserted_at mixed without rule
- actor / user / operator used interchangeably without domain definition


## Exact Status Dictionary Split
## Exact Status Dictionary Split

The following status classes must not be merged:

- status
- workflow_status
- approval_status
- lifecycle_status
- execution_status
- reconciliation_status

Inline magic string use is prohibited.
All canonical status values must be governed by enum master.

## Exact ID Code Status Audit Rules

- id is internal canonical identity
- code is readable business lookup identity where applicable
- status and workflow_status must remain separate
- audit_ref_id and trace_id must remain linkable
- superseded_by and revision_group_id must be used for lineage instead of destructive overwrite
