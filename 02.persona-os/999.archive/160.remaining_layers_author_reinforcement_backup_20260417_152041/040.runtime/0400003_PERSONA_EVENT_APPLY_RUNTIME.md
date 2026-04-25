# PERSONA EVENT APPLY RUNTIME

status: implementation-ready-followup

runtime_goal:
Execute a validated inbound persona event exactly once against truth authority.

runtime_sequence:
- accept request context
- resolve correlation id and dedupe key
- run validation
- invoke canonical apply
- persist terminal result
- emit feedback and optional outbox side effects

runtime_guards:
- no apply before validation success
- no duplicate truth mutation
- no ambiguous partial success
- no missing audit write on terminal path
