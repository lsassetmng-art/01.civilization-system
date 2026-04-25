# ============================================================
# AIWORKER ACCEPTANCE TEST CATALOG EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the minimum acceptance test catalog for implementation-ready status.

test_buckets:

A. boundary tests
- business does not own worker mutable truth
- aiworker owns canonical worker truth
- cx22073jw implementation dependency remains external
- raw-table direct-read prohibition holds for AI worker runtime actors

B. schema and code-table tests
- aiworker schema exists
- required core tables exist
- required code families exist
- current-row uniqueness holds where required

C. controlled function tests
- official intake required before canonical mutation
- gate denial blocks mutation
- approval requirement blocks mutation when missing
- audit-required mutation fails without audit side effect
- legal transition succeeds
- illegal transition fails closed

D. payload tests
- command payload validates
- staging payload normalizes correctly
- official intake payload rejects unknown critical shape
- result payload excludes raw internal refs
- payload_version handling is correct

E. replay tests
- duplicate identical request returns NOOP_ALREADY_APPLIED or REDELIVER_RESULT_ONLY
- mismatched replay is rejected
- nonterminal intake blocks auto-remutation
- redelivery does not remutate canonical truth

F. grant and RLS tests
- AI worker runtime raw-table grants are absent
- official intake writer cannot finalize mutation
- controlled-function executor can execute only allowed functions
- restricted reviewer and privileged reviewer are separated
- event delivery role is narrow

G. recovery tests
- stuck intake recovery runbook is executable in dry-run mode
- event redelivery recovery works without remutation
- audit gap detection works
- recovery operations produce incident-linked evidence

H. event delivery tests
- required outbox rows are written
- delivery metadata updates are narrow
- duplicate delivery handling preserves result integrity

implementation_ready_test_minimum:
- at least one PASS scenario and one FAIL scenario per bucket
- all critical boundary tests PASS
- all replay safety tests PASS
- all grant boundary tests PASS

hard_rules:
- implementation-ready status cannot be claimed without acceptance evidence
- smoke-only testing is insufficient
