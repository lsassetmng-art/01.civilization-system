# ============================================================
# CIVILIZATION ACTION SCOPE AND ERROR CODE EXACT STRUCTURE
# ============================================================

status: exact-design
layer: implementation
domain: 018.meta
subdomain: 560.dbprep-and-phase2-exact-design
document_id: 1201849602
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact structure for action scope and error code preparation.

## 2. action_scope_master Exact Fields

Required fields:

- action_scope_id
- action_scope_code
- action_scope_name
- scope_domain
- scope_layer
- scope_description
- idempotency_required_flag
- audit_required_flag
- outbox_required_flag
- inbox_required_flag
- active_flag
- created_policy_note

## 3. error_code Exact Fields

Required fields:

- error_code_id
- error_code
- error_family
- severity_level
- retryable_flag
- user_visible_flag
- canonical_message_key
- technical_message_note
- handling_policy_note
- active_flag

## 4. Exact Structure Rule

Both families must remain:

- canonical enough for later DB design
- narrow enough for phase-1 preparation only
- independent from runtime domain expansion

## 5. Acceptance Checklist

- action_scope fields fixed
- error_code fields fixed
- narrow-first rule fixed
