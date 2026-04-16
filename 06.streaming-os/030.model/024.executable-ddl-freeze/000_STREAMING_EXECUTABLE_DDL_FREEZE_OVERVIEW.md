# ============================================================
# STREAMING EXECUTABLE DDL FREEZE OVERVIEW
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: executable-ddl-freeze
owner: Boss
prepared_by: Zero

purpose:
Defines executable DDL freeze drafts
for the canonical streaming schema.

summary:
This domain moves from exact DDL candidates
toward freeze-grade executable SQL blocks.

principles:
- executable first
- additive-safe ordering
- minimal reverse dependency
- explicit checks and unique constraints
- foreign keys only where dependency order is already stabilized

current_scope:
The current executable DDL freeze set covers:

- core principals / sessions / assets / publish / monetization / reactions / rankings / ads
- creator platform
- viewer continuity
- review pipeline
- comments / reports / appeals / restoration
- notifications / platform events / alerts
- channels / corporate oversight / affiliations

