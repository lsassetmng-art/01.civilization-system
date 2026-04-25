# ============================================================
# CIVILIZATION DECISION UPDATE LEDGER SCHEMA
# ============================================================

status: governance-schema
layer: implementation
domain: 018.meta
subdomain: 620.decision-revision-and-reconsideration-governance
document_id: 1201850205
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the ledger schema for future decision updates.

## 2. Required Ledger Fields

Required fields:

- decision_update_id
- prior_decision_ref
- updated_decision_family
- changed_field_list
- change_reason_type
- change_summary
- supersede_scope
- approved_posture_summary
- recorded_at_note

## 3. change_reason_type Values

- blocker_change
- design_gap_change
- boundary_change
- explicit_owner_redecision
- governance_correction

## 4. Hard Rule

Every later decision change must be ledgered.
No silent supersession is allowed.

## 5. Acceptance Checklist

- ledger fields fixed
- reason types fixed
- no-silent-supersession rule fixed
