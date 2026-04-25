# ============================================================
# CIVILIZATION VIOLATION RESPONSE PROTOCOL
# ============================================================

status: response-protocol
layer: implementation
domain: 018.meta
subdomain: 720.conformance-and-deviation-control-pack
document_id: 1201851204
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how to respond when nonconformant or deviation behavior is found.

## 2. Response Protocol

When a violation is found:

1. stop deeper action
2. classify the deviation
3. determine whether it is semantic or non-semantic
4. restore baseline if drift or wrong-start exists
5. route to:
   - maintenance / errata
   - recovery path
   - governed semantic change path
6. document response summary

## 3. Required Response Outputs

Required outputs:

- violation_response_id
- deviation_class
- severity_group
- semantic_change_risk_flag
- required_recovery_flag
- selected_response_path
- response_summary_text

## 4. Response Path Values

- align_nonsemantic_and_continue
- restore_and_reanchor
- stop_and_open_governed_change_path
- stop_and_refuse_further_action

## 5. Hard Rule

Violation response must prefer safety of posture over speed of progress.

## 6. Acceptance Checklist

- response protocol fixed
- response outputs fixed
- response path values fixed
- safety-over-speed rule fixed
