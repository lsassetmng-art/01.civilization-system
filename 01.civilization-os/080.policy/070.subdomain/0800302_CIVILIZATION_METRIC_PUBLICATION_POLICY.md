# ============================================================
# CIVILIZATION METRIC PUBLICATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for metric publication.

policy_rules:
- published metrics must preserve source lineage
- stale or invalid metrics must not appear silently current
- superseding publications must remain traceable
- publication trace must remain inspectable

truth_boundary:
Published metrics remain derived publication state, not source truth.
