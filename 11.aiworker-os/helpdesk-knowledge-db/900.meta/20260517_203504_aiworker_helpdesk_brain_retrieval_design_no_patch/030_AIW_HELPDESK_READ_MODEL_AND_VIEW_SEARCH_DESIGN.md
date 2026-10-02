# AIWorkerOS Helpdesk Read Model and View Search Design

## 1. Existing read models

Existing views:

- aiworker.v_helpdesk_active_supported_app
- aiworker.v_helpdesk_active_qa
- aiworker.v_helpdesk_active_error_pattern

These are enough for first lookup smoke, but not enough for a complete Helpdesk brain retrieval bundle.

## 2. Missing read model

A unified retrieval document view is useful later.

Candidate:

- aiworker.v_helpdesk_retrieval_document

Purpose:

Represent each searchable knowledge item as a document-like row.

Potential columns:

- retrieval_document_id
- app_code
- locale
- document_kind
- title
- body
- keywords
- screen_code
- flow_code
- error_code
- runbook_code
- rule_code
- template_code
- confidence_level
- priority
- source_table
- source_id
- is_active
- updated_at

## 3. Do not create it yet

Do not apply DDL now.

Reason:

- First fix retrieval contract.
- Confirm search ranking.
- Confirm whether application-side ranking is enough.
- Avoid premature DB function/view design.

## 4. Search method options

Option A: application-side search using current views and tables

- safest
- no DB change
- easier to tune ranking

Option B: unified SQL view

- useful when API/internal retrieval stabilizes
- still read-only
- good for Portal search later

Option C: SQL function

- not recommended first
- hides logic
- harder to review
- harder to separate guardrail boundary

## 5. Recommendation

Use Option A first.

Then add v_helpdesk_retrieval_document as no-apply DDL draft only after internal retrieval contract is confirmed.
