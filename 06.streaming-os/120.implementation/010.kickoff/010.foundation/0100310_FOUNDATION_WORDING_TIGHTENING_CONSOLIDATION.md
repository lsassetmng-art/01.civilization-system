# ============================================================
# FOUNDATION WORDING TIGHTENING CONSOLIDATION
# ============================================================

status: canonical-refinement
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Consolidates wording-tightening points for K1 foundation.

tightening_points:

principal_handle_uniqueness:
- handle is globally unique across streaming_principals
- uniqueness is business-level and not company-scoped
- collision resolution must happen before persistence write

principal_projection_boundary:
- public read means projection-safe subset only
- oversight-safe subset is broader than public projection
- support-path access is exceptional and audit-linked, not ordinary ownership authority

session_lifecycle:
- lifecycle_state is the canonical session state axis
- publish_ready_flag is a readiness gate only
- governance_block_flag is a policy gate only
- neither gate replaces lifecycle_state

transition_semantics:
- transition_action selects the intended state move
- current lifecycle_state determines whether the move is allowed
- support-path override, if ever permitted later, must remain explicit and auditable

audit_wording:
- every lifecycle transition must record action basis
- every lifecycle transition must record actor basis
- every lifecycle transition must record resulting state
- reason_code is meaning-level optional but audit capability must exist
