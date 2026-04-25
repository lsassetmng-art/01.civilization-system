# ============================================================
# CIVILIZATION OUTBOX INBOX AUDIT VERIFY VIEW EXACT STRUCTURE
# ============================================================

status: exact-design
layer: implementation
domain: 018.meta
subdomain: 560.dbprep-and-phase2-exact-design
document_id: 1201849603
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact structure family for outbox, inbox, audit, and verify-view planning.

## 2. outbox Exact Fields

Required fields:

- outbox_id
- event_type
- event_scope
- source_ref
- payload_ref_note
- enqueue_status
- retry_count
- next_retry_policy_note
- created_at_policy_note

## 3. inbox Exact Fields

Required fields:

- inbox_id
- message_type
- source_system
- source_ref
- dedupe_key_note
- receive_status
- processing_status
- processing_ref_note
- received_at_policy_note

## 4. audit Exact Fields

Required fields:

- audit_id
- audit_scope
- action_ref
- actor_ref_note
- result_status
- evidence_ref_note
- created_at_policy_note

## 5. verify-view Exact Fields

Required fields:

- verify_view_id
- verify_scope
- target_family
- evidence_family
- summary_projection_note
- refresh_policy_note

## 6. Hard Rule

These structures are preparation targets only.
They do not imply phase-1 DB apply approval.

## 7. Acceptance Checklist

- outbox fields fixed
- inbox fields fixed
- audit fields fixed
- verify-view fields fixed
- preparation-only rule fixed
