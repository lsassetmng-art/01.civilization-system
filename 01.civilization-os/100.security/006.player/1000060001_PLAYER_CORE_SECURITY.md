# ============================================================
# PLAYER CORE SECURITY
# ============================================================

status: canonical
layer: security
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core security rules for player handling.

scope:
Covers read and write authorization,
identity-sensitive protection,
restricted state masking,
live/history separation,
and audit trace for player state.

design_intent:
Player security must prevent both unsafe disclosure
and unsafe participation control.
A user seeing a player record is different from
a user changing a player lifecycle or role.

required_behavior:
- Enforce read authorization by player scope and disclosure class.
- Enforce write authorization for lifecycle, role, progress, or boundary changes.
- Mask restricted fields where summary-safe projection is allowed.
- Block audit-only traces from non-audit consumers.
- Separate current-live and historical-only access paths.
- Emit trace for sensitive security decisions where required.

actor_matrix:
- public_consumer -> public_summary only
- self_consumer -> self-scoped current data where allowed
- internal_consumer -> internal player data where authorized
- restricted_operator -> restricted player data or mutations where authorized
- high_trust_operator -> high-impact player mutations where authorized
- auditor -> historical and audit traces where authorized

decision_table:
- public_consumer + public_summary -> allow
- public_consumer + restricted player state -> block
- self_consumer + own record -> allow within self scope
- self_consumer + other player's restricted data -> block
- restricted_operator + lifecycle mutation -> allow only with appropriate authority
- auditor + historical trace -> allow only via audit/history authorization

validation_rules:
- player_ref is required.
- requested action is required.
- self-scope access requires ownership verification.
- lifecycle mutation requires mutation authority basis.
- historical access must remain distinct from current-live access.
- audit-only traces must remain non-live and non-public.

failure_codes:
- PLAYER_SEC_PLAYER_REF_MISSING
- PLAYER_SEC_ACTION_MISSING
- PLAYER_SEC_OWNERSHIP_MISMATCH
- PLAYER_SEC_READ_DENIED
- PLAYER_SEC_WRITE_DENIED
- PLAYER_SEC_MASK_REQUIRED
- PLAYER_SEC_HISTORY_ACCESS_DENIED
- PLAYER_SEC_AUDIT_TRACE_DENIED

example_scenarios:
- A player may see their own safe progress summary, but not another player's restricted operator role.
- A restricted operator may suspend a player only if lifecycle-control authority is present.
