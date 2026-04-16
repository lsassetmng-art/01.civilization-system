# ============================================================
# EXPENSE NO BROAD REDESIGN NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
States that broad redesign should not be the default next action
for the current ExpenseSettlement design round.

default_rule:
Do not broadly redesign ExpenseSettlement from this point.

why:
- the product concept is already fixed
- the policy frame is already fixed
- restart and closure assets are already fixed
- remaining work is mostly narrow tuning

broad_redesign_is_only_reasonable_if:
- contradiction is found
- higher-level system rule changes
- governance explicitly requests redesign
- a hard business requirement invalidates the current frame

preferred_next_actions:
- parameter tuning
- catalog refinement
- safe consolidation
- implementation-readiness review only if explicitly opened

