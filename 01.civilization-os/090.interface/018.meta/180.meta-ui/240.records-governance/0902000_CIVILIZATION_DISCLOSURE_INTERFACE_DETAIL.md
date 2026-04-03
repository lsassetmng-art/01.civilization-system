# ============================================================
# CIVILIZATION DISCLOSURE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for disclosure-governed access.

required_fields:
- target_record_scope
- requester_scope
- disclosure_basis
- classification_label_code
- correlation_id

success_condition:
- disclosure request classified and routed safely

failure_condition:
- invalid target
- missing disclosure basis
- incompatible classification handling
