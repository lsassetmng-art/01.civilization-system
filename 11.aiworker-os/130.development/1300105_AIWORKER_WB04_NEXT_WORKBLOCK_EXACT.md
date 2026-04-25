# ============================================================
# AIWORKER WB04 NEXT WORKBLOCK EXACT
# ============================================================

status: wb04-next-workblock
system: AiworkerOS
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
Define the next exact bundle after WB04.

next_workblock:
- WB05: grant matrix and RLS exact design

wb05_targets:
- aiworker raw-table access matrix
- controlled-function execution roles
- official intake write role separation
- no-direct-read policy realization
- restricted / privileged access matrix
- event_outbox delivery-side grant boundary

followup_after_wb05:
- WB06: replay, backfill, and acceptance test catalog
