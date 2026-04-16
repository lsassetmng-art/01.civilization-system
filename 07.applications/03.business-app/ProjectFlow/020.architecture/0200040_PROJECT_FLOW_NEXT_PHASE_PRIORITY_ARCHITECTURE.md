# ============================================================
# PROJECT FLOW NEXT PHASE PRIORITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines recommended priority order
for the next phase after current design closure.

priority_groups:
- safe_local_refinement_first
- boundary_sensitive_planning_second
- blocked_or_deferred_areas_last

architecture_rules:
- start from app-local stable areas first
- boundary-sensitive planning should follow only after safe-local refinement is clear
- unresolved external ownership conflict areas remain blocked
- no direct ERP assumption enters earlier priority groups
