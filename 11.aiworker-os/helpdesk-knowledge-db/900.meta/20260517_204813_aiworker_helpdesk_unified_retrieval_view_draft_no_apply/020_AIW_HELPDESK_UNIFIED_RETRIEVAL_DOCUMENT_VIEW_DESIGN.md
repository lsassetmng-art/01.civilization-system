# AIWorkerOS Helpdesk Unified Retrieval Document View Design

## 1. Purpose

The Helpdesk should behave as AIWorkerOS brain knowledge first.

This view draft creates a single document-like read model:

- aiworker.v_helpdesk_retrieval_document

The view is intended for internal retrieval/search and answer-context construction.

It is not an API implementation.

## 2. Design decision

The view normalizes multiple Helpdesk knowledge tables into one retrieval shape.

Included document kinds:

- app_profile
- qa
- screen
- operation_flow
- error_pattern
- runbook
- escalation_rule
- answer_template

## 3. Retrieval shape

The view exposes:

- retrieval_document_id
- source_table
- source_id
- app_code
- locale
- document_kind
- title
- body
- keywords
- searchable_text
- screen_code
- flow_code
- error_code
- runbook_code
- rule_code
- template_code
- confidence_level
- priority
- visibility
- escalation_required
- blocks_ai_answer
- is_active
- updated_at

## 4. Why this is useful

AIWorkerOS internal retrieval can search one read model instead of manually querying each Helpdesk table.

This supports:

- app support overview
- QA lookup
- screen help
- operation flow retrieval
- error troubleshooting
- runbook retrieval
- escalation candidate discovery
- answer template selection

## 5. Boundary

This view must not:

- execute operations
- write tickets
- write response logs
- duplicate Guardrail Knowledge DB decision logic
- make CX22073JW an execution authority
- become a Portal API by itself

## 6. API position

API is later transport.

The internal order remains:

helpdesk tables
  -> retrieval/read models
  -> AIWorkerOS internal retrieval
  -> answer context payload
  -> answer generation
  -> later API/Portal transport
