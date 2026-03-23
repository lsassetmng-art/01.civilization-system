# ============================================================
# PERSONA LIFE USAGE BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the boundary of Persona usage inside LifeOS.

allowed:
- assistant behavior selection
- reminder behavior selection
- reflection style selection
- UI-level persona availability
- life-context assistant enablement

not_allowed:
- direct overwrite of Life primary records by PersonaOS
- uncontrolled raw health export to PersonaOS
- trust bypass by UI or operator path
