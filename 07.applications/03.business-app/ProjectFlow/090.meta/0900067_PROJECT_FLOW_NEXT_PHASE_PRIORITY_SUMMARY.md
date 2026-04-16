# ============================================================
# PROJECT FLOW NEXT PHASE PRIORITY SUMMARY
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a compact recommended priority order
for the next phase.

recommended_priority_order:
1. local UI and wireframe refinement
2. local wording and multilingual label refinement within Japanese/English scope
3. local state/event/use-case refinement
4. local customer-facing material refinement
5. local auditability refinement
6. BusinessOS/ERP boundary-sensitive implementation planning
7. DB hardening and field-level finalization only after boundary clarity
8. any blocked conflict area only after explicit conflict resolution

not_recommended_early:
- direct ERP access assumptions
- local reinterpretation of ERP-owned truth
- local takeover of shared common component ownership
