# ============================================================
# PLAYER BOUNDARY INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: player
subdomain: player-boundary
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for player-boundary data.

scope:
Covers internal boundary projection,
view-only or historical-only export,
admin-managed trace export,
and rejection of unsafe live-control implication.

required_behavior:
- Support internal boundary projection for authorized consumers.
- Support historical-only export with explicit labeling.
- Support audit-safe admin-managed trace export.
- Prevent boundary export from implying live control where not allowed.

projection_classes:
- internal_boundary_context
- view_only_summary
- historical_boundary_trace
- audit_admin_boundary_trace

validation_rules:
- player_ref is required.
- historical-only boundary export requires historical flag.
- admin-managed boundary export requires audit or explicit authority scope.
- exported boundary context must not imply more control than allowed.

failure_codes:
- PLAYER_BOUNDARY_INT_REF_MISSING
- PLAYER_BOUNDARY_INT_HISTORICAL_FLAG_REQUIRED
- PLAYER_BOUNDARY_INT_ADMIN_SCOPE_REQUIRED
- PLAYER_BOUNDARY_INT_CONTROL_IMPLICATION_VIOLATION

example_scenarios:
- An internal admin console receives admin-managed boundary trace.
- A public surface never receives raw admin-managed boundary detail.
