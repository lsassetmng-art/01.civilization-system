# ============================================================
# CIVILIZATION SYNC BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define canonical synchronization boundaries across OS domains.

sync_directions:
- CivilizationOS -> subordinate OS
- subordinate OS -> CivilizationOS
- subordinate OS -> subordinate OS through governed boundary

required_properties:
- explicit contract
- correlation traceability
- causation traceability where applicable
- idempotent handling
- retry-safe handling
- auditable state transition

prohibited:
- direct cross-domain truth overwrite
- hidden side-channel mutation
- unversioned contract acceptance

boundary_rule:
Synchronization is reflection and coordination,
not silent truth transfer.
