# ============================================================
# CIVILIZATION CLOSURE AND FOLLOWUP OUTCOME CONTRACT
# ============================================================

status: closure-contract
layer: implementation
domain: 018.meta
subdomain: 740.request-resolution-and-closure-pack
document_id: 1201851404
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the standard outcome contract after request resolution or safe stop.

## 2. Required Outcome Fields

Required fields:

- request_resolution_id
- original_request_intake_id
- routed_path
- completion_state
- unresolved_state
- closure_status
- followup_required_flag
- next_allowed_path
- closure_summary_text

## 3. Canonical closure_status Values

- closed_read_only
- closed_nonsemantic
- closed_recovery
- closed_governed_preparation
- stopped_safe_refusal
- unresolved_open

## 4. Follow-Up Rule

Every request outcome must explicitly state whether follow-up is required.
No implied follow-up is allowed.

## 5. Hard Rule

Closure status and follow-up need must remain separate fields.

## 6. Acceptance Checklist

- required outcome fields fixed
- closure status values fixed
- follow-up rule fixed
- no-implied-followup rule fixed
