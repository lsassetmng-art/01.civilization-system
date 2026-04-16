# ============================================================
# PHASE 2 ENTRY DECISION PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines conditions for moving from Phase 1 to Phase 2.

phase_2_entry_conditions:
- Phase 1 acceptance criteria all passed
- ProposalBuilder core is stable
- ProfitPreview core is stable
- locale and currency foundations are already embedded cleanly
- no structural rewrite is needed before scenario switch insertion
- no class collapse is visible around ProposalBuilderViewModel
- no money-meaning confusion remains in profit preview rendering

phase_2_allowed_scope:
- scenario switched proposal
- proposal basis panel
- explainable profit surface
- market event input
- template selection
- internal explanation draft

phase_2_blockers:
- unstable local persistence
- unstable navigation
- unstable settings / locale / currency preference
- proposal builder still mixing repository and UI logic
