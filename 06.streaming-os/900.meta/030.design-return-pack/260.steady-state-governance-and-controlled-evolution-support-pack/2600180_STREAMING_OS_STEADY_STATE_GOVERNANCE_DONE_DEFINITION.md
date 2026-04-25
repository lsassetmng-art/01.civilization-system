# ============================================================
# STREAMING OS STEADY STATE GOVERNANCE DONE DEFINITION
# ============================================================

status: canonical-done-definition
layer: meta
domain: steady-state-governance-and-controlled-evolution-support-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

done_when:
- steady-state-governance checklist passes
- controlled-evolution change rule is applied
- rollback scope rule is applied
- handoff constraint is fixed
- steady-state-governance gate is satisfied
- next phase may move to controlled-evolution support evaluation

not_done_when:
- live-operations support merely existed
- invariants are still drifting
- steady-state-governance status is assumed rather than checked
