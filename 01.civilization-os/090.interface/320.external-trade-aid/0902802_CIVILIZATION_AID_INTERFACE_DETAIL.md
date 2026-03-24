# ============================================================
# CIVILIZATION AID INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for aid programs and disbursements.

required_fields:
- program_code
- donor_scope
- recipient_scope
- disbursed_value where applicable
- correlation_id

compatibility_rule:
Aid interfaces must remain donor-aware and recipient-aware.
