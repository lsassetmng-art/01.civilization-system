# ============================================================
# PERSONA EXTERNAL TRUST RESULT CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Represent outbound trust-related sync results returned by PersonaOS.

fields:
- trust_contract_id
- target_os
- target_user_id
- persona_id
- trust_score
- trust_level
- safety_score
- stability_score
- consistency_score
- last_evaluated_at
- correlation_id
- created_at
