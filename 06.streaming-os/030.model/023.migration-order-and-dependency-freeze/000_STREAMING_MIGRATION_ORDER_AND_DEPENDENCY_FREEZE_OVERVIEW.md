# ============================================================
# STREAMING MIGRATION ORDER AND DEPENDENCY FREEZE OVERVIEW
# ============================================================

status: canonical-draft
system: streaming-os
domain: migration-order-and-dependency-freeze
owner: Boss
prepared_by: Zero

purpose:
Defines migration ordering
and dependency freeze direction
for StreamingOS exact DDL candidates.

summary:
This domain fixes which table groups must precede others,
which groups may be added later,
and how migration phases should preserve semantic safety.

