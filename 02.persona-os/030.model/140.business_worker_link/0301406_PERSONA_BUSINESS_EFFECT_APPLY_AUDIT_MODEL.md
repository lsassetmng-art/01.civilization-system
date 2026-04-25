# ============================================================
# PERSONA BUSINESS EFFECT APPLY AUDIT MODEL
# ============================================================

status: canonical
layer: model
domain: business-worker-link
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines audit model for PersonaOS-side application.

minimum_fields:
- apply_audit_id
- business_effect_receipt_id
- persona_id
- result_status
- reject_reason
- processed_at
