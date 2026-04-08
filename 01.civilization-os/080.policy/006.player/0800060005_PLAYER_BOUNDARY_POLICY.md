# ============================================================
# PLAYER BOUNDARY POLICY
# ============================================================

status: canonical
layer: policy
domain: player
subdomain: player-boundary
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for player boundaries.

scope:
Covers disclosure and control rules for full_participation,
limited_participation, view_only,
admin_managed, and historical_only boundaries.

policy_focus:
- prohibition of live-control implication from restricted boundary states
- authority requirements for admin_managed
- historical-only separation
- retention of prior boundary changes

disclosure_matrix:
- public_boundary_summary -> limited and only if safe
- internal_boundary_context -> internal
- restricted_boundary_detail -> restricted
- historical_boundary_trace -> historical or audit only
- audit_admin_boundary_trace -> audit_only

validation_rules:
- boundary_class is required.
- admin_managed requires authority basis.
- historical_only must not be represented as live participation.
- view_only must not carry hidden live-control semantics.

failure_codes:
- PLAYER_BOUNDARY_POLICY_CLASS_MISSING
- PLAYER_BOUNDARY_POLICY_ADMIN_AUTH_REQUIRED
- PLAYER_BOUNDARY_POLICY_HISTORY_LIVE_CONFLICT
- PLAYER_BOUNDARY_POLICY_VIEW_CONTROL_VIOLATION

example_scenarios:
- A historical_only boundary may remain in audit trace but cannot be shown as live participation capability.
