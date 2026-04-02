# ============================================================
# CIVILIZATION STATE OWNERSHIP ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define state ownership architecture across CivilizationOS
and connected subordinate OS domains.

state_categories:
- canonical norm state
- reflected sync state
- derived aggregate state
- operational execution state
- audit state

ownership_rules:
- canonical norm state belongs to governing canonical layer
- reflected sync state must indicate external truth source
- derived aggregate state must preserve source lineage
- audit state must remain append-oriented where possible
- operational state must not silently overwrite canonical state

truth_boundary:
CivilizationOS may govern boundaries, but must not absorb
subordinate truth domains without explicit constitutional basis.
