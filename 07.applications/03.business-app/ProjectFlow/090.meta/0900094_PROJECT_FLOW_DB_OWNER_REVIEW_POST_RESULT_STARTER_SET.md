# ============================================================
# PROJECT FLOW DB OWNER REVIEW POST RESULT STARTER SET
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Provides starter actions for each DB-owner review result type.

pass_case_actions:
- update local notes with confirmed schema decision
- update local notes with confirmed hardening order
- allow DB-phase planning on confirmed areas
- keep later sophistication items deferred

partial_case_actions:
- list confirmed areas explicitly
- list still-blocked areas explicitly
- continue planning only for confirmed areas
- prepare re-review items for blocked areas

hold_case_actions:
- keep DB-phase planning blocked
- record hold reasons explicitly
- prepare clarification or follow-up package
- rerun DB-owner review only after blockers are addressed
