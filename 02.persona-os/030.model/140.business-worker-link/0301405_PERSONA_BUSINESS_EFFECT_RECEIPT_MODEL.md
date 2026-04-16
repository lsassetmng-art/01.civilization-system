# ============================================================
# PERSONA BUSINESS EFFECT RECEIPT MODEL
# ============================================================

status: canonical
layer: model
domain: business-worker-link
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines received business-origin effect model.

minimum_fields:
- business_effect_receipt_id
- event_id
- persona_id
- company_id
- effect_type
- payload
- received_at
- applied_at
