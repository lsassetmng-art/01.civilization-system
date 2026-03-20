# ============================================================
# RECONSTRUCTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Reconstruction restores affected systems after war.

targets:
- infrastructure
- economy
- governance stability
- public morale
- institutional capacity

rules:
- reconstruction is not automatic full recovery
- rebuilding requires time, resources, and policy commitment
- postwar recovery may fail if underlying instability remains

event_flow:
- reconstruction_plan_created
- reconstruction_budget_allocated
- rebuilding_event_executed
- recovery_progress_recalculated

final_rule:
Postwar recovery must be explicit, gradual, and resource-bound.
