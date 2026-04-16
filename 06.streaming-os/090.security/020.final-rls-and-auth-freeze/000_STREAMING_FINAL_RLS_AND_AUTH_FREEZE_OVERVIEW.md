# ============================================================
# STREAMING FINAL RLS AND AUTH FREEZE OVERVIEW
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-rls-and-auth-freeze
owner: Boss
prepared_by: Zero

purpose:
Defines freeze-grade actor,
role,
and RLS binding direction
for StreamingOS table families.

summary:
This domain fixes who the major actors are,
which authority classes exist,
and how table families should bind to row-level access intent
before executable policy SQL is frozen.

