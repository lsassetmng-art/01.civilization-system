# ============================================================
# PLAYER PROGRESS SECURITY
# ============================================================

status: canonical
layer: security
domain: player
subdomain: player-progress
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for player progression.

scope:
Covers current progress visibility,
restricted progression visibility,
progression mutation authorization,
and historical progression audit access.

security_focus:
- self versus internal progression disclosure
- restricted-stage protection
- prevention of unauthorized progression mutation
- separation of current and historical progression access

actor_matrix:
- self_consumer -> own safe current progress where allowed
- internal_consumer -> internal progress context where authorized
- restricted_operator -> progression mutation where authorized
- auditor -> historical progression trace where authorized

decision_table:
- self_consumer + own safe progress summary -> allow
- public_consumer + restricted progress detail -> block
- restricted_operator + stage mutation -> allow only with mutation authority
- auditor + historical progression trace -> allow only via audit/history path

validation_rules:
- progress_stage is required when mutating or disclosing current progress.
- restricted stage disclosure must be limited to authorized consumers.
- historical progression output must not appear on live surfaces.
- mutation of progression must require explicit control basis where policy demands it.

failure_codes:
- PLAYER_PROGRESS_SEC_STAGE_MISSING
- PLAYER_PROGRESS_SEC_READ_DENIED
- PLAYER_PROGRESS_SEC_MUTATION_DENIED
- PLAYER_PROGRESS_SEC_RESTRICTED_DETAIL_DENIED
- PLAYER_PROGRESS_SEC_HISTORY_ACCESS_DENIED

example_scenarios:
- A player may see their onboarding summary but not internal restricted-stage rationale unless authorized.
