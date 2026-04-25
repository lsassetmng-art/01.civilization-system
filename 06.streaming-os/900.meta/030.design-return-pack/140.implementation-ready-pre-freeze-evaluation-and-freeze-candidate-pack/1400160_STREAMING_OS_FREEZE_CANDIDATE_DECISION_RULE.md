# ============================================================
# STREAMING OS FREEZE CANDIDATE DECISION RULE
# ============================================================

status: canonical-rule
layer: meta
domain: implementation-ready-pre-freeze-evaluation-and-freeze-candidate-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

allowed_decisions:
- not_ready_for_freeze_candidate
- ready_for_freeze_candidate_with_non_blocking_cleanup
- ready_for_freeze_candidate
- blocked_by_cross_domain_issue
- blocked_by_domain_specific_issue

decision_rule:
A ready decision may be made only when:
- all blocking issues are closed
- cross-domain dependency reading is stable
- persona-boundary locked premise remains intact
- no reconnect fallback is needed

forbidden_decision_basis:
- assuming stability without explicit checklist pass
- ignoring unresolved freeze-blocking items
- treating broad ambiguity as non-blocking by default
