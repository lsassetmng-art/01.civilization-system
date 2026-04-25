# ============================================================
# CIVILIZATION REQUEST CASE REFERENCE SUMMARY RULE
# ============================================================

status: reference-summary-rule
layer: implementation
domain: 018.meta
subdomain: 750.request-lifecycle-and-ledger-pack
document_id: 1201851505
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how one past request case should be summarized for later reference.

## 2. Required Case Summary Fields

Required fields:

- request_case_id
- original_request_class
- routed_path
- final_lifecycle_state
- closure_status
- unresolved_state
- next_allowed_path
- case_reference_summary_text

## 3. Summary Rule

A case summary should be compact, but it must still preserve:

- how the request entered
- how it was handled
- how it ended
- whether future action is still allowed

## 4. Hard Rule

Case summaries are reference aids only.
They do not override the underlying request ledger or canonical surface.

## 5. Acceptance Checklist

- required case summary fields fixed
- summary rule fixed
- no-summary-override rule fixed
