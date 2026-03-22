# ============================================================
# MODEL
# ============================================================

model_id: 0301100004
model_name: persona_guardrail

domain: 0110.security
system: 03.persona_os

# PURPOSE
Represents safety guardrails.

# DESCRIPTION
Persona guardrail defines restrictions
ensuring safe persona behavior.

# RELATIONS
persona_guardrail
 -> access_policy
 -> behavior
