# AIWorkerOS Helpdesk Retrieval Search Ranking Policy

## 1. Ranking should be application-side first

Do not hide ranking in a SQL function at this phase.

The unified view should expose enough fields for ranking, but the ranking policy should be explicit and reviewable.

## 2. Initial scoring proposal

Recommended score factors:

- app_code exact match: +40
- locale exact match: +20
- document_kind matches request_kind: +20
- screen_code exact match: +20
- flow_code exact match: +20
- error_code exact match: +25
- searchable_text contains q: +10
- keywords contain q: +10
- confidence_level verified: +10
- confidence_level high: +7
- escalation_required true when request_kind is escalation/error: +10
- lower priority value: higher rank
- active/effective rows only

## 3. Retrieval modes

app_support_overview:

- prefer app_profile
- then qa

qa_question:

- prefer qa
- then screen
- then operation_flow

screen_help:

- prefer screen
- then operation_flow
- then qa

operation_flow:

- prefer operation_flow
- then screen
- then qa

error_troubleshooting:

- prefer error_pattern
- then runbook
- then escalation_rule
- then qa

escalation_check:

- prefer escalation_rule
- then error_pattern
- then runbook
- guardrail remains separate authority

template_selection:

- prefer answer_template

## 4. Guardrail rule

Guardrail result can influence ranking or blocking, but Helpdesk does not own Guardrail decision logic.

## 5. CX rule

CX22073JW can enrich background context only after Helpdesk retrieval identifies domain/context.

CX22073JW must not become support execution authority.
