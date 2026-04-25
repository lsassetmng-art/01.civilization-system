# ============================================================
# STREAMING OS REBASELINE SUPPORT DONE DEFINITION
# ============================================================

status: canonical-done-definition
layer: meta
domain: rebaseline-support-and-baseline-reset-boundary-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

done_when:
- rebaseline-support checklist passes
- baseline reset classification rule is applied
- rollback scope rule is applied
- handoff constraint is fixed
- rebaseline-support gate is satisfied
- next phase may move to design-return master closure and archive-ready preparation

not_done_when:
- scoped-redesign-preparation merely existed
- invariants are still drifting
- rebaseline-support status is assumed rather than checked
