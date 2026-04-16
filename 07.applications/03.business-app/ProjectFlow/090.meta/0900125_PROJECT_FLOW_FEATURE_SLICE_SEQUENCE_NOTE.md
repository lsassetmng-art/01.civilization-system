# ============================================================
# PROJECT FLOW FEATURE SLICE SEQUENCE NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Explains the preferred execution order
for early feature-slice planning.

sequence_reasoning:
- start from local UI/state slices that depend only on reviewed local deliverables
- continue into customer-material slices once material planning outputs are reviewed
- move to sync and repository/gateway slices only after boundary-aware deliverables are reviewed
- keep BusinessOS-facing gateway slices last among early slices
  because they are most sensitive to external boundary interpretation

important_rule:
This sequence optimizes for stable local progress first
and boundary-sensitive work second.
