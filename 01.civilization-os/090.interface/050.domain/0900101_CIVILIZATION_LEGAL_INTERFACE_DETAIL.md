# ============================================================
# CIVILIZATION LEGAL INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define legal-facing interface requirements.

required_fields:
- law_code or treaty_code
- version marker
- compatibility status where applicable
- correlation_id

compatibility_rule:
Legal interface requests must remain version-aware.
