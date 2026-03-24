# ============================================================
# CIVILIZATION AUDIT TRACE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical audit trace flow.

flow_steps:
1 event or action occurs
2 trace fields are attached
3 audit event is materialized
4 audit event is appended
5 downstream review remains possible

required_trace_fields:
- correlation_id
- causation_id where applicable
- actor or executor identity where applicable
- source_state_version where applicable
