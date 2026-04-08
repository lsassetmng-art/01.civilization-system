# ============================================================
# STORY CORE SECURITY
# ============================================================

status: canonical
layer: security
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core security rules for story handling.

scope:
Covers authorization for current story access,
historical replay access,
branch visibility control,
masking of restricted narrative detail,
and trace preservation.

design_intent:
Story security must preserve interpretive boundaries.
Some consumers may see only summary,
some may see their own branch,
and some may audit historical chains.
Those classes must never be confused.

required_behavior:
- Enforce story-scope authorization.
- Enforce separate permissions for live and replay story access.
- Mask restricted branch details where partial disclosure is allowed.
- Block audit-only traces from non-audit consumers.
- Emit trace for sensitive story access decisions where required.

actor_matrix:
- public_consumer -> public_summary only
- self_consumer -> self_context where applicable and authorized
- internal_consumer -> internal story detail where authorized
- restricted_operator -> restricted story detail where authorized
- auditor -> replay/audit traces where authorized

decision_table:
- public_consumer + public_summary -> allow
- public_consumer + restricted_branch -> block
- self_consumer + own story -> allow within self scope
- self_consumer + other player's story -> block unless explicit support authority
- internal_consumer + internal detail -> allow where authorized
- auditor + replay trace -> allow only through audit/history authorization

validation_rules:
- story_scope is required.
- access mode must identify current vs replay request.
- branch_visibility_class is required when branching exists.
- self-scoped story access must verify subject ownership or support authority.
- audit-only trace access must remain non-live and non-public.

failure_codes:
- STORY_SEC_SCOPE_MISSING
- STORY_SEC_ACCESS_MODE_MISSING
- STORY_SEC_BRANCH_VISIBILITY_REQUIRED
- STORY_SEC_SELF_SCOPE_DENIED
- STORY_SEC_RESTRICTED_BRANCH_DENIED
- STORY_SEC_REPLAY_ACCESS_DENIED
- STORY_SEC_AUDIT_TRACE_DENIED

example_scenarios:
- A public consumer sees only a safe summary of a city story.
- A player may view their onboarding branch, while other players cannot.
- An auditor may access replay traces but cannot cause them to appear as live story.
