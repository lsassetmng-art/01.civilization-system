# ============================================================
# CIVILIZATION RIGHTS INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for IP, licensing, and technology transfer.

required_fields:
- ip_code
- license_code where applicable
- granted_rights
- transfer_ref where applicable
- correlation_id

compatibility_rule:
Rights interfaces must expose explicit entitlement semantics.
