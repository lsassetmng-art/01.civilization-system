# ============================================================
# PROJECT FLOW NEXT PHASE EXECUTION TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for running the next phase in a stable order.

execution_template:

step_1:
- confirm next-phase scope
- confirm whether work remains design-only or implementation-planning
- confirm blocked conflict areas are still blocked

step_2:
- run safe local refinement first
- local wireframe refinement
- local wording cleanup
- multilingual label refinement within Japanese and English scope

step_3:
- refine local state, event, and use-case detail
- refine local customer-facing material composition
- refine local auditability notes if needed

step_4:
- check whether BusinessOS mediation interpretation is conflict-free
- only then continue boundary-sensitive planning

step_5:
- check whether ERP field ownership interpretation is conflict-free
- only then continue field-level finalization planning

step_6:
- check whether DB hardening assumptions are safe
- only then continue DB-side finalization planning

blocked_items_must_not_be_pulled_forward:
- direct ERP access assumption
- unresolved ownership conflict work
- unresolved mediation conflict work
- shared common component reownership
