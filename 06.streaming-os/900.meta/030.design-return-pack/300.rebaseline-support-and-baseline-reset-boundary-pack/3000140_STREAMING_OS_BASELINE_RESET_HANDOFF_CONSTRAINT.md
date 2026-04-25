# ============================================================
# STREAMING OS BASELINE RESET HANDOFF CONSTRAINT
# ============================================================

status: canonical-rule
layer: meta
domain: rebaseline-support-and-baseline-reset-boundary-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

handoff_rule:
A future baseline-reset or archive-ready closure phase may receive only:
- preserved domain invariants
- preserved approved design reading
- preserved governance and change-control context
- preserved variance and rollback classification
- explicitly classified reset-scope requests

handoff_must_not_include:
- ambiguous ownership model
- ambiguous mutation-path meaning
- unresolved blocking contradiction
- reopened reconnect logic without evidence
- broad persona-boundary rework without concrete trigger
- hidden scope expansion masquerading as maintenance

meaning:
Baseline reset handoff is a constrained transfer,
not a silent discard of the current design package.
