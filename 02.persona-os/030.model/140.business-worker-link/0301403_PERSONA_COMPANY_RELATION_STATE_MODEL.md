# ============================================================
# PERSONA COMPANY RELATION STATE MODEL
# ============================================================

status: canonical
layer: model
domain: business-worker-link
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines company-related internal relation state.

minimum_fields:
- persona_company_relation_state_id
- persona_id
- company_id
- relation_temperature
- comfort_level
- continuity_level
- updated_at
