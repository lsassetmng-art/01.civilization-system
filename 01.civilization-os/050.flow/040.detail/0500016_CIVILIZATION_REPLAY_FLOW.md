# ============================================================
# CIVILIZATION REPLAY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical replay flow.

flow_steps:
1 failed or dead-lettered unit is identified
2 replay request is created
3 approval is evaluated if required
4 replay coordination runtime validates target
5 eligible target is requeued
6 replay outcome is audited

replay_rule:
Replay must remain bounded, approved where required,
and idempotency-safe.
