# PERSONA IDEMPOTENT APPLY RUNTIME

status: implementation-ready-followup

idempotency_rule:
The same effective event must not mutate truth more than once.

runtime_checks:
- dedupe key lookup
- prior terminal status lookup
- no-op duplicate return
- terminal result replay where allowed

required_result_family:
- applied
- duplicate_noop
- rejected
- retrying
- dead_lettered
