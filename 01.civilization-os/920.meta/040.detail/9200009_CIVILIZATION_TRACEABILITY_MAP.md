# ============================================================
# CIVILIZATION TRACEABILITY MAP
# ============================================================

status: canonical
layer: 920.meta
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define traceability mapping requirements across CivilizationOS.

trace_fields:
- correlation_id
- causation_id where applicable
- source_state_version where applicable
- contract_version where applicable
- actor or executor identity where applicable

traceability_rule:
Cross-domain behavior must remain reconstructable from canonical traces.
