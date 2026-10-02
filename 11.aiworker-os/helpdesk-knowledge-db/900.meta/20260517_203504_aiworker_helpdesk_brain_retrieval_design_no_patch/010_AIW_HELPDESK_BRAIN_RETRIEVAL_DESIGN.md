# AIWorkerOS Helpdesk Brain Retrieval Design

## 1. Canonical correction

Helpdesk should not be treated as API-first.

The correct architecture is:

1. aiworker.helpdesk_* tables hold Helpdesk knowledge as AIWorkerOS brain data.
2. aiworker.v_helpdesk_* views expose read models for lookup.
3. AIWorkerOS internal retrieval logic selects relevant knowledge.
4. AIWorkerOS answer generation uses retrieved context to create support responses.
5. API is only a later transport/interface for Portal or other clients.

## 2. Current phase

Current phase is internal brain retrieval design.

No code patch.
No API patch.
No DB write.
No DDL apply.
No DML apply.

## 3. Retrieval inputs

Internal retrieval should accept:

- app_code
- locale
- user_question
- screen_code
- flow_code
- error_text
- error_code
- use_case
- request_kind
- return_to
- civilization_id when available
- guardrail_result_ref when available
- cx_reference_hint when allowed

## 4. Retrieval source priority

Priority order:

1. app support profile
2. exact screen_code or flow_code match
3. exact error_code or error_pattern match
4. QA question/answer/keywords match
5. runbook trigger match
6. escalation rule trigger match
7. answer template by use_case
8. guardrail runtime result reference
9. optional CX22073JW reference enrichment

## 5. Ranking rule

Initial ranking should be application-side, not hidden DB magic.

Recommended score components:

- app_code exact match
- locale exact match
- screen_code exact match
- flow_code exact match
- error_code exact match
- text match in question/answer/error/user explanation
- keyword match
- confidence level
- escalation priority
- active/effective date
- source type

## 6. Retrieval result

Retrieval result should return a context bundle, not final answer.

The bundle should include:

- app context
- QA candidates
- screen knowledge candidates
- operation flow candidates
- error pattern candidates
- runbook candidates
- escalation candidates
- answer template candidate
- guardrail reference outcome if supplied
- CX reference snippets if allowed
- retrieval_trace

## 7. Boundary rules

Helpdesk retrieval must not:

- execute app operations
- perform DB writes
- create tickets in Phase1
- upload evidence
- duplicate Guardrail Knowledge DB decision logic
- make CX22073JW an execution authority
- require Portal API route first

## 8. API position

API is downstream.

Do not patch API until:

- internal retrieval contract is fixed
- read model strategy is fixed
- answer generation context payload is fixed
- Portal needs a transport endpoint
