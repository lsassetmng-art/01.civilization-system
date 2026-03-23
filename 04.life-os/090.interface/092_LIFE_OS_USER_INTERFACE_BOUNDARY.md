# ============================================================
# LIFE OS USER INTERFACE BOUNDARY
# ============================================================

status: canonical
layer: 090.interface
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define user-facing interface responsibility and limits.

user_interface_scope:
- record input
- history view
- summary view
- reminder acknowledgment
- correction request
- manual sync request where allowed

must_not_do:
- expose internal-only infrastructure controls
- expose unrestricted raw audit internals
- blur persona and life ownership boundaries
