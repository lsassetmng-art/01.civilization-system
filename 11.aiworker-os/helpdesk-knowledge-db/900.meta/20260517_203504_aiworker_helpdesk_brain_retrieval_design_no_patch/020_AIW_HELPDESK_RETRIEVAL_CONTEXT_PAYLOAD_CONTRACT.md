# AIWorkerOS Helpdesk Retrieval Context Payload Contract

## 1. Input payload

Canonical internal retrieval request:

{
  "app_code": "ai_company_manager",
  "locale": "ja",
  "request_kind": "qa | screen_help | operation_flow | error_troubleshooting | escalation_check | template_selection",
  "user_question": "...",
  "screen_code": "...",
  "flow_code": "...",
  "error_code": "...",
  "error_text": "...",
  "use_case": "...",
  "return_to": "...",
  "guardrail_result_ref": "...",
  "cx_reference_hint": {
    "enabled": false,
    "domain": null
  }
}

## 2. Output payload

Canonical retrieval result:

{
  "ok": true,
  "retrieval_mode": "helpdesk_brain",
  "readonly": true,
  "app_context": {},
  "qa_candidates": [],
  "screen_candidates": [],
  "flow_candidates": [],
  "error_candidates": [],
  "runbook_candidates": [],
  "escalation_candidates": [],
  "answer_template": {},
  "guardrail_context": {},
  "cx_reference_context": [],
  "retrieval_trace": []
}

## 3. Retrieval trace

Each trace item should include:

{
  "source": "aiworker.v_helpdesk_active_qa",
  "match_reason": "app_code + keyword",
  "score": 80,
  "row_ref": "qa_entry_id",
  "used_in_answer_context": true
}

## 4. Error payload

If retrieval fails:

{
  "ok": false,
  "reason": "NO_APP_CONTEXT | NO_MATCH | POLICY_BLOCK | SERVER_ERROR",
  "message": "User-facing explanation",
  "retrieval_trace": []
}

## 5. Internal-only status

This is not an external API contract yet.

It is the internal contract between:

- Helpdesk Knowledge DB
- AIWorkerOS retrieval logic
- AIWorkerOS answer generation logic
