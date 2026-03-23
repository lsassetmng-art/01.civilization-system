# ============================================================
# LIFE OS ADMIN INTERFACE BOUNDARY
# ============================================================

status: canonical
layer: 090.interface
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define admin-facing interface responsibility and limits.

admin_interface_scope:
- policy inspection
- sync state inspection
- failure investigation
- operational maintenance
- schema-safe support actions

must_not_do:
- bypass privacy boundary without explicit authority
- directly mutate primary records without traceability
- conflate operator tools with normal user tools
