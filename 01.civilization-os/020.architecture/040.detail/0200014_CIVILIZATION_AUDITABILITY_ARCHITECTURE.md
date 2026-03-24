# ============================================================
# CIVILIZATION AUDITABILITY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define architecture requirements for auditability.

audit_requirements:
- every privileged path must be attributable
- cross-domain synchronization must be traceable
- state transitions must be explainable
- retry and dead-letter events must remain visible
- version and compatibility decisions must remain inspectable

minimum_trace_fields:
- correlation_id
- causation_id where applicable
- source_state_version where applicable
- actor or executor identity where applicable
- created_at
- updated_at
