# ============================================================
# CIVILIZATION RELIGIOUS GOVERNANCE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for religious corporations and sacred sites.

required_fields:
- corporation_code or site_code
- faith_scope
- managing_scope
- protection basis where applicable
- correlation_id

success_condition:
- religious governance request classified and routed safely

failure_condition:
- invalid target
- missing faith or protection basis
- incompatible governance handling
