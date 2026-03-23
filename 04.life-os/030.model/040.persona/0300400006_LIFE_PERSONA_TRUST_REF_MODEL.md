# ============================================================
# LIFE PERSONA TRUST REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona trust-related values inside LifeOS.

fields:
- life_user_id
- persona_id
- trust_score
- trust_level
- safety_score
- stability_score
- consistency_score
- last_evaluated_at

usage_rule:
Permission and trust are separate.
Trust gates exposure strength in LifeOS.
