# ============================================================
# PUBLIC OFFICE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Public office defines positions of authority.

roles:
- president
- minister
- administrator

rules:
- assignment must be explicit
- removal must be explicit

event_flow:
- office_assigned
- office_revoked

final_rule:
Public office must never be silently reassigned.
