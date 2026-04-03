# ============================================================
# CIVILIZATION COMPATIBILITY DECISION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for compatibility decision making.

runtime_scope:
- inspect contract version
- inspect target domain compatibility
- classify contract handling
- persist compatibility decision

trigger_conditions:
- inbound contract received
- outbound contract prepared
- replay requested
- repair sync requested

processing_steps:
1 inspect contract identity and version markers
2 inspect target domain compatibility rules
3 classify compatible, limited, or incompatible
4 persist compatibility decision
5 route contract to proceed, bounded handling, or rejection path

success_condition:
- compatibility classification is explicit and persisted

failure_condition:
- version semantics missing
- target compatibility rule unavailable
- persistence failure
