# ============================================================
# MARKETPLACE SELLER INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for marketplace seller lifecycle handling.

required_fields:
- seller_code or creator_code or payout_code or tax_code
- seller_type
- owner_user_id
- payout_profile_ref where applicable
- tax_profile_ref where applicable
- correlation_id

success_condition:
- marketplace seller request classified and routed safely

failure_condition:
- invalid target
- missing owner, payout, or tax basis
- incompatible seller handling
