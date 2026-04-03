# ============================================================
# CIVILIZATION DISPUTE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for dispute intake.

required_fields:
- claimant_scope
- respondent_scope
- dispute_type
- dispute_summary
- correlation_id

success_condition:
- dispute request classified and routed safely

failure_condition:
- invalid party target
- missing initiating basis
- incompatible dispute handling
