# ============================================================
# AIWORKER REPLAY BACKFILL AND RECOVERY SAFETY GUARD EXACT
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze safety guards for replay, backfill, and recovery operations.

replay_safety_guards:
- identical lineage equivalence check required
- nonterminal prior intake blocks auto-remutation
- redelivery path must not alter canonical truth
- mismatch path fails closed
- approval and audit requirements remain effective during replay evaluation

backfill_safety_guards:
- dry-run output required before execution
- scope filter required
- target-row count check required
- high-impact repair requires explicit reviewer approval
- restricted/privileged family repair requires narrower reviewer scope

recovery_safety_guards:
- terminal-state rewrite requires explicit approved repair path
- event redelivery role cannot rewrite canonical truth
- audit gaps must be surfaced, not silently ignored
- repaired rows require recovery note or incident linkage

forbidden_shortcuts:
- bulk canonical rewrite without scope ledger
- bypassing controlled functions for convenience
- deleting historical evidence to hide inconsistency
- using style/rank/app lane as repair privilege substitute

hard_rules:
- safety guard failure blocks execution
- repair convenience never overrides canonical integrity
