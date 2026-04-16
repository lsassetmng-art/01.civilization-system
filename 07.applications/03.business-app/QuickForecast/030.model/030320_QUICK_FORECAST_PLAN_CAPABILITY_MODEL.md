# ============================================================
# QUICK FORECAST PLAN CAPABILITY MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines capability mapping by plan.

capability_groups:

core_draft_capability:
- forecast draft
- scenario comparison
- action drafting
- proposal drafting
- profit preview

continuity_capability:
- sync
- extended save capacity
- extended history retention

collaboration_capability:
- share
- review
- approval

enterprise_capability:
- ERP reference
- ERP handoff
- governed trace and notification

plan_mapping:

BASIC:
- core_draft_capability

PRO_PERSONAL:
- core_draft_capability
- continuity_capability

PRO_TEAM:
- core_draft_capability
- continuity_capability
- collaboration_capability
- enterprise_capability
