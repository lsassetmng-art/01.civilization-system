# ============================================================
# CIVILIZATION REQUEST OUTCOME CONTRACT
# ============================================================
status: outcome-contract
layer: implementation
domain: 018.meta
subdomain: 730.request-intake-and-routing-pack
document_id: 1201851305
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the standard outcome contract after request intake and routing.

## 2. Required Outcome Fields

Required fields:

- request_intake_id
- original_request_class
- routing_result
- baseline_confirmed_flag
- shortcut_detected_flag
- recovery_required_flag
- governed_path_required_flag
- outcome_status
- outcome_summary_text

## 3. Canonical outcome_status Values

- handled_read_only
- routed_to_nonsemantic_alignment
- routed_to_recovery
- routed_to_governed_change
- stopped_for_safe_refusal
- stopped_for_insufficient_context

## 4. Outcome Rule

Every routed request should end in one explicit outcome status.
No silent routing is allowed.

## 5. Hard Rule

A request is not complete merely because it was understood.
It must have an explicit routing outcome.

## 6. Acceptance Checklist

- required outcome fields fixed
- outcome status values fixed
- no-silent-routing rule fixed
- no-understood-equals-complete rule fixed
