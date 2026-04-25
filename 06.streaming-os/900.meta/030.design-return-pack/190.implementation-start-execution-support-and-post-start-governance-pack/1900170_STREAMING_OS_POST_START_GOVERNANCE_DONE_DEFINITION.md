# ============================================================
# STREAMING OS POST START GOVERNANCE DONE DEFINITION
# ============================================================

status: canonical-done-definition
layer: meta
domain: implementation-start-execution-support-and-post-start-governance-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

done_when:
- execution-support checklist passes
- invariant execution matrix is fixed
- deviation control rule is fixed
- rollback and escalation rule is fixed
- next phase may move to actual implementation-start governance support usage

not_done_when:
- implementation-start support merely exists
- deviation handling is still ambiguous
- rollback scope is still ambiguous
