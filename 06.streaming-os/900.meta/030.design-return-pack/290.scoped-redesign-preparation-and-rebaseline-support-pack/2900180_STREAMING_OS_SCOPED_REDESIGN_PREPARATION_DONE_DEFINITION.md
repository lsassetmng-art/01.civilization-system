# ============================================================
# STREAMING OS SCOPED REDESIGN PREPARATION DONE DEFINITION
# ============================================================

status: canonical-done-definition
layer: meta
domain: scoped-redesign-preparation-and-rebaseline-support-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

done_when:
- scoped-redesign-preparation checklist passes
- boundary classification rule is applied
- rollback scope rule is applied
- handoff constraint is fixed
- scoped-redesign-preparation gate is satisfied
- next phase may move to rebaseline support evaluation

not_done_when:
- next-cycle design reentry merely existed
- invariants are still drifting
- scoped-redesign-preparation status is assumed rather than checked
