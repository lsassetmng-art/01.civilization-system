# ============================================================
# CIVILIZATION FUNDRAISING INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for investment rounds and commitments.

required_fields:
- round_code
- investor_scope
- committed_value
- pricing_summary
- correlation_id

compatibility_rule:
Fundraising interfaces must expose explicit pricing and commitment semantics.
