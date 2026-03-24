# ============================================================
# CIVILIZATION EXECUTION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for award and execution handling.

required_fields:
- source_award_code
- execution_ref
- target_scope
- stay_order_code where applicable
- correlation_id

compatibility_rule:
Execution interfaces must remain award-aware and stay-aware.
