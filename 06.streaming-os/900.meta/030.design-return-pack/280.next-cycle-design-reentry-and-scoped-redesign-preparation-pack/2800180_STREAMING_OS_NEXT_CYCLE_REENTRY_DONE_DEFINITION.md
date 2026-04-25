# ============================================================
# STREAMING OS NEXT CYCLE REENTRY DONE DEFINITION
# ============================================================

status: canonical-done-definition
layer: meta
domain: next-cycle-design-reentry-and-scoped-redesign-preparation-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

done_when:
- next-cycle reentry checklist passes
- scope classification rule is applied
- rollback scope rule is applied
- handoff constraint is fixed
- next-cycle reentry gate is satisfied
- next phase may move to scoped-redesign preparation support

not_done_when:
- controlled-evolution-readiness merely existed
- invariants are still drifting
- next-cycle reentry status is assumed rather than checked
