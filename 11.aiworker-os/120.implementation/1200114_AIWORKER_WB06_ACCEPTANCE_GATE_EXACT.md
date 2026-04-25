# ============================================================
# AIWORKER WB06 ACCEPTANCE GATE EXACT
# ============================================================

status: wb06-acceptance-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the acceptance gate for WB06 and implementation-ready prefreeze status.

must_pass:
- replay decision flow is fixed
- idempotency lineage is fixed
- redelivery without remutation is fixed
- mismatch replay fails closed
- backfill and recovery runbook direction is fixed
- safety guards are fixed
- acceptance test catalog is fixed
- grant/RLS boundary tests are included
- controlled function boundary tests are included
- SQL-affecting recovery direction is reviewed with 佐藤(DB担当)

prefreeze_condition:
WB06 is complete only when all must_pass items are satisfied and the system is ready
for an implementation-ready freeze bundle.

hard_rules:
- replay ambiguity cannot be left implicit
- recovery cannot be left as ad hoc operator behavior
- implementation-ready claim requires acceptance-test planning evidence
