# ============================================================
# CIVILIZATION CUSTOMS INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for customs declarations.

required_fields:
- declaration_ref
- shipment_ref
- goods_summary
- declarant_scope
- correlation_id

success_condition:
- customs request classified and routed safely

failure_condition:
- invalid target
- missing shipment or goods basis
- incompatible declaration handling
