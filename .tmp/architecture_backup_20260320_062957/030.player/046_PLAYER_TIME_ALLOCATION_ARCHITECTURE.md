# ============================================================
# PLAYER TIME ALLOCATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Time allocation defines how player time is distributed across activities.

activities:
- study
- work
- rest
- relationship
- travel
- administration

rules:
- time is finite
- conflicting schedules must be resolved explicitly
- allocation changes affect downstream systems through events

constitution_alignment:
- no hidden schedule mutation
- time effects must be explicit

final_rule:
Player time must be treated as a bounded resource with auditable allocation.
