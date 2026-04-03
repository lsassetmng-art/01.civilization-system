# ============================================================
# CIVILIZATION AGGREGATE REBUILD POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for aggregate rebuild.

policy_rules:
- derived aggregates must preserve source lineage
- stale aggregates must remain explicitly marked
- rebuild must not silently overwrite source truth
- invalid aggregates must remain inspectable

truth_boundary:
Aggregate rebuild produces derived state only.
