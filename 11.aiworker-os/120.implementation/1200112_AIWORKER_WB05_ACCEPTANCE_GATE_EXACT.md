# ============================================================
# AIWORKER WB05 ACCEPTANCE GATE EXACT
# ============================================================

status: wb05-acceptance-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the acceptance gate for WB05 grant matrix and RLS exact design.

must_pass:
- AI worker runtime roles have zero raw-table read grants
- raw truth is deny-by-default
- official intake writer cannot finalize canonical mutation directly
- controlled-function executor is the only execution role for canonical mutation
- event delivery can only access outbox delivery surface narrowly
- audit reviewer is separate from event delivery
- restricted reviewer is separate from privileged reviewer
- restricted and privileged truth do not inherit to general review
- RLS direction is fixed for tenant-sensitive families
- grant/RLS direction is reviewed with 佐藤(DB担当)

freeze_condition:
WB05 is implementation-ready only when all must_pass items are satisfied.
