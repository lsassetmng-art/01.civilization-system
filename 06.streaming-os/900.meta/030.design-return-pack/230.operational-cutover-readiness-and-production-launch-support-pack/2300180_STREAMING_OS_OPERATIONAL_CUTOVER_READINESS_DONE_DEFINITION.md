# ============================================================
# STREAMING OS OPERATIONAL CUTOVER READINESS DONE DEFINITION
# ============================================================

status: canonical-done-definition
layer: meta
domain: operational-cutover-readiness-and-production-launch-support-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

done_when:
- operational-cutover-readiness checklist passes
- launch residual risk rule is applied
- rollback scope rule is applied
- handoff constraint is fixed
- operational-cutover-readiness gate is satisfied
- next phase may move to production-launch support evaluation

not_done_when:
- launch-readiness merely existed
- invariants are still drifting
- operational-cutover-readiness status is assumed rather than checked
