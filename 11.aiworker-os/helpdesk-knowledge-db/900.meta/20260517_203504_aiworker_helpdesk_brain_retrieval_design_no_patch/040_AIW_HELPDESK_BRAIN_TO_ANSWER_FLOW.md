# AIWorkerOS Helpdesk Brain to Answer Flow

## 1. Flow

1. Receive internal Helpdesk request.
2. Normalize app_code, locale, screen_code, flow_code, and request_kind.
3. Read app context.
4. Retrieve candidates from helpdesk read models/tables.
5. Check escalation candidates.
6. Consult guardrail runtime result if available.
7. Optionally enrich from CX22073JW reference if allowed.
8. Select answer template.
9. Build answer context.
10. Generate answer.
11. Return answer and trace.

## 2. Not allowed

The flow must not:

- write tickets in Phase1
- write response logs in Phase1
- bypass guardrail
- use CX22073JW as execution authority
- require HTTP API first
- mutate app data

## 3. Escalation behavior

If escalation rule blocks answer:

- return safe explanation
- include escalation target route
- do not execute operation
- do not create ticket unless later ticket phase exists

## 4. Guardrail behavior

Guardrail is consulted as a separate authority.

Helpdesk may display or explain guardrail outcome, but it does not own dangerous operation decision logic.

## 5. CX behavior

CX22073JW can enrich answer context only as reference/background.

It cannot decide support outcome or execute actions.
