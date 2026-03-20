# ============================================================
# NATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Nation is the sovereign unit of governance.

purpose:
- define territory, population, and sovereignty
- provide context for law and economy

core_attributes:
- nation_id
- territory
- population
- sovereignty_status

rules:
- nation cannot be implicitly created or destroyed
- sovereignty must be explicit

event_flow:
- nation_founded
- sovereignty_changed
- nation_dissolved

final_rule:
Nation existence must be explicit and auditable.
